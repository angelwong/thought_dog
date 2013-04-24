class Assignment
  include Mongoid::Document

  embedded_in :section
  has_many :uploads

  field :assignment_name, type: String
  field :due_date, type: Date

end
