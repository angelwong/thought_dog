class Section
  include Mongoid::Document

  has_and_belongs_to_many :users
  belongs_to :course

  field :teacher, type: String
  field :num, type: Integer
end