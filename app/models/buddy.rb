class Buddy < ApplicationRecord
  CATEGORY = ['all', 'celebrations', 'workout', 'work', 'love', 'holidays']
  include PgSearch::Model

  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_city?

  belongs_to :user
  has_many :events, dependent: :destroy
  validates :description, length: { minimum: 10 }, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORY, message: '%{value} is not a valid category' }
  validates :city, presence: true

  pg_search_scope :global_search,
                    against: [ :category, :city ],
                    associated_against: {
                      user: [ :name, :age, :sex ]
                    },
                    using: { tsearch: { prefix: true } }
end
