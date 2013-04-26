class Assignment
  include Mongoid::Document
  	
  has_and_belongs_to_many :users

  field :name, type: String
  field :teacher, type: String
  field :duedate, type: Time
end