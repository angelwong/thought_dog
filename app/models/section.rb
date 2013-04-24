class Section
  include Mongoid::Document

  belongs_to :course
  embeds_many :assignments
  has_and_belongs_to_many :users

  field :section_number, type: Integer
  field :professor, type: String
end