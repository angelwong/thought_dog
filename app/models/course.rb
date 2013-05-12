class Course
  include Mongoid::Document
  
  has_many :sections

  field :call_num, type: Integer
  field :course_title, type: String
  field :start_time, type: DateTime
  field :end_time, type: DateTime
  field :meets_on, type: String
  field :room, type: String
  field :instructor, type: String

  validates :course_title, presence: true

end