class User
  include Mongoid::Document

  has_and_belongs_to_many :courses

  field :name, type: String
  field :email, type: String
end