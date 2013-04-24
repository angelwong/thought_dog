class Upload
  include Mongoid::Document

  belongs_to :assignment

  field :user_name, type: String
  field :upload_name, type: String
  field :upload_date, type: Date

end
