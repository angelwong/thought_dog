class Section
  include Mongoid::Document
  field :section_number, type: Integer
  field :professor, type: String

  embedded_in :course
  embeds_many :users
  embeds_many :assignments
end
