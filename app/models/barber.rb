class Barber < ApplicationRecord
  belongs_to :user
  has_many :haircuts
  has_many :photos
  
  geocoded_by :zip_code
  after_validation :geocode
end
