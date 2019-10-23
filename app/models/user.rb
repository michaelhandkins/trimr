class User < ApplicationRecord
  has_many :barbers
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :city, presence: true
  validates :state, presence: true
end
