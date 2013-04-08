class Course
  include Mongoid::Document

  embedded_in :enrollments
  embeds_many :sections

  field :dept, type: String
  field :course_number, type: Integer
  field :course_name, type: String
end