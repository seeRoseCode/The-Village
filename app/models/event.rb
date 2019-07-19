class Event < ApplicationRecord
  belongs_to :users
  belongs_to :calendar
end
