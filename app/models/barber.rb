class Barber < ApplicationRecord
  belongs_to :user
  has_many :haircuts
  has_many :photos
end
