class CanCanCan::Sequel::ActiveRecordDisabler
  ::CanCan::ModelAdapters::ActiveRecord4Adapter.class_eval do
    def self.for_class?(_)
      false
    end
  end
end
