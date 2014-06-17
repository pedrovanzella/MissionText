class Event < ActiveRecord::Base
  has_many :event_users
  has_many :volunteers, through: :event_users, source: :user
  belongs_to :user
end
