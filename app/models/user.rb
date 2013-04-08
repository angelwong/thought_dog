class User
  include Mongoid::Document

  embedded_in :enrollments
  embeds_many :uploads

  field :name, type: String
  field :email, type: String
end