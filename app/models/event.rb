class Event < ApplicationRecord
  belongs_to :user
  belongs_to :buddy

  validates :user, presence: true
end
