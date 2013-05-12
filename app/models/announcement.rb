class Announcement
  include Mongoid::Document
  	
  belongs_to :section
  
  field :subject, type: String
  field :teacher, type: String
  field :message, type: String
end

