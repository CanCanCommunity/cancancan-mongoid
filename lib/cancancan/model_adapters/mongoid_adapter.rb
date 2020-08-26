module CanCan
  module ModelAdapters
    class MongoidAdapter < AbstractAdapter
      def self.for_class?(model_class)
        model_class <= Mongoid::Document
      end

      def self.override_conditions_hash_matching?(subject, conditions)
        conditions.any? do |k, _v|
          key_is_not_symbol = -> { !k.is_a?(Symbol) }
          subject_value_is_array = lambda do
            subject.respond_to?(k) && subject.send(k).is_a?(Array)
          end

          key_is_not_symbol.call || subject_value_is_array.call
        end
      end

      def self.matches_conditions_hash?(subject, conditions)
        # To avoid hitting the db, retrieve the raw Mongo selector from
        # the Mongoid Criteria and use Mongoid::Matchers#matches?
        q = subject.class.where(conditions).selector
        if subject.respond_to?(:_matches?)
          subject._matches?(q)
        else
          subject.matches?(q)
        end
      end

      def database_records
        if @rules.empty?
          @model_class.where(_id: { '$exists' => false, '$type' => 7 }) # return no records in Mongoid
        elsif @rules.size == 1 && @rules[0].conditions.is_a?(Mongoid::Criteria)
          @rules[0].conditions
        else
          # we only need to process can rules if
          # there are no rules with empty conditions
          database_records_from_multiple_rules
        end
      end

      def database_records_from_multiple_rules
        rules = @rules.reject { |rule| rule.conditions.empty? && rule.base_behavior }
        process_can_rules = @rules.count == rules.count
        any_conditions = []

        scope = rules.inject(@model_class.all) do |records, rule|
          if rule.base_behavior
            any_conditions << simplify_relations(@model_class, rule.conditions) if process_can_rules
            records
          else
            records.excludes(simplify_relations(@model_class, rule.conditions))
          end
        end

        if any_conditions.any?
          scope.any_of(*any_conditions)
        else
          scope
        end
      end

      private

      # Look for criteria on relations and replace with simple id queries
      # eg.
      # {user: {:tags.all => []}} becomes {"user_id" => {"$in" => [__, ..]}}
      # {user: {:session => {:tags.all => []}}} becomes {"user_id" => {"session_id" => {"$in" => [__, ..]} }}
      def simplify_relations(model_class, conditions)
        model_relations = model_class.relations.with_indifferent_access
        Hash[
          conditions.map do |k, v|
            if (relation = model_relations[k])
              relation_class_name =
                (relation.respond_to?(:class_name) ? relation.class_name : relation[:class_name]).presence ||
                k.to_s.classify
              v = simplify_relations(relation_class_name.constantize, v)
              relation_ids = relation_class_name.constantize.where(v).distinct(:_id)
              k = "#{k}_id"
              v = { '$in' => relation_ids }
            end
            [k, v]
          end
        ]
      end
    end
  end
end

# simplest way to add `accessible_by` to all Mongoid Documents
module Mongoid::Document::ClassMethods
  include CanCan::ModelAdditions::ClassMethods
end
