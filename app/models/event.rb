class Event < ApplicationRecord
  belongs_to :user
  belongs_to :buddy

  validates :users, presence: true
end
