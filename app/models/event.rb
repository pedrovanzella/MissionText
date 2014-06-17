class Event < ActiveRecord::Base
  has_many :volunteers, through: :event_volunteers
end
