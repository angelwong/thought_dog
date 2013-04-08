class Enrollment
  include Mongoid::Document

  embeds_one :User
  embeds_one :Course
  embeds_one :Section
end