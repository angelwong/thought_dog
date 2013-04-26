class User
  include Mongoid::Document

  has_and_belongs_to_many :sections
  has_and_belongs_to_many :assignments
  has_many :uploads, validate: false

  field :name, type: String
  field :email, type: String
end