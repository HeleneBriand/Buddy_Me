class Buddy < ApplicationRecord
  CATEGORY = ['all', 'celebrations', 'workout', 'work', 'love', 'holidays']

  belongs_to :user
  has_many :events
  has_one_attached :photo
  validates :description, length: { minimum: 10 }, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORY, message: '%{value} is not a valid category' }
  validates :city, presence: true

end
