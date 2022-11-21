class Event < ApplicationRecord
  belongs_to :buddies
  belongs_to :users
end
