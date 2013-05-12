class User
  include Mongoid::Document

  has_and_belongs_to_many :sections
  has_and_belongs_to_many :assignments
  has_many :uploads, validate: false

  field :name, type: String
  field :email, type: String
  field :role, type: String

  before_save :default_values

  def default_values
    self.role ||= "Student"
  end

  validates :email, presence: true
end