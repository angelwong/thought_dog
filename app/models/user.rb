class User
  include Mongoid::Document
  field :name, type: String
  field :email, type: String

  embedded_in :section
  has_and_belongs_to_many :courses
  embeds_many :uploads
end
