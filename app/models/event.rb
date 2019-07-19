class Event < ApplicationRecord
  belongs_to :user
  belongs_to :calendar
  has_many :reservtions
  has_many :attendees, through: :reservations, source: :user
end
