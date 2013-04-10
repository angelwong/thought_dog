class Upload
  include Mongoid::Document
  field :user_name, type: String
  field :upload_name, type: String
  field :upload_date, type: Date

  embedded_in :course
end
