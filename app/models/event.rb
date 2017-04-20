class Event < ApplicationRecord
  belongs_to :user

  validates :title, :event_date, presence: true
end
