class Section
  include Mongoid::Document

  embedded_in :course
  embeds_many :assignments
  
  field :section_number, type: Integer
  field :professor, type: String
end