class Course
  include Mongoid::Document

  has_many :sections
  has_and_belongs_to_many :users

  field :dept, type: String
  field :course_number, type: Integer
  field :course_name, type: String
end