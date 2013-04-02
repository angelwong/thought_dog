class Assignment
  include Mongoid::Document
  field :assignment_name, type: String
  field :due_date, type: Date

  embedded_in :sections
  embeds_many :uploads
end
