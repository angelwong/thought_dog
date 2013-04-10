class Course
  include Mongoid::Document

  embeds_many :sections
  embeds_many :uploads
  has_and_belongs_to_many :users

  field :dept, type: String
  field :course_number, type: Integer
  field :course_name, type: String
end