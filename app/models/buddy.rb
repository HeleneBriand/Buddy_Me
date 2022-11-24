class Buddy < ApplicationRecord
  CATEGORY = ['all', 'celebrations', 'workout', 'work', 'love', 'holidays']

  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_city?

  belongs_to :user
  has_many :events
  has_one_attached :photo
  validates :description, length: { minimum: 10 }, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORY, message: '%{value} is not a valid category' }
  validates :city, presence: true

end
