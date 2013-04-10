class Assignment
  include Mongoid::Document
  field :assignment_name, type: String
  field :due_date, type: Date

  embedded_in :section
end
