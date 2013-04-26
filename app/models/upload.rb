class Upload
  include Mongoid::Document
  
  belongs_to :user

  field :title, type: String
  field :uploaddate, type: Time
end