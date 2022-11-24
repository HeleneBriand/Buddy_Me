class User < ApplicationRecord
  SEX = ['F', 'M']
  has_many :buddies
  has_many :events


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :sex, inclusion: { in: SEX, message: '%{value} is not a valid category' }
end
