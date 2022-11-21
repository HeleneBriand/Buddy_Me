class Buddy < ApplicationRecord
  belongs_to :users
  has_many :events

end
