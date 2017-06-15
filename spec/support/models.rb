class MongoidCategory
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic

  has_many :mongoid_projects
end

class MongoidProject
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic

  belongs_to :mongoid_category, required: false
  has_many :mongoid_sub_projects
end

class MongoidSubProject
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic

  belongs_to :mongoid_project, required: false
end
