class Buddy < ApplicationRecord
  belongs_to :user
  has_many :events
  validates :description, length: { minimum: 10 }, presence: true
  validates :category, presence: true
  validates :city, presence: true
end
