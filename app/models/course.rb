class Course
  include Mongoid::Document
  field :dept, type: String
  field :course_number, type: Integer
  field :course_name, type: String

  has_and_belongs_to_many :users
  embeds_many :sections
end
