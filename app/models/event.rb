class Event < ApplicationRecord
  belongs_to :user

  validates :title, :event_date, presence: true
  validates :repeat, inclusion: { in: 0..4 }
end
