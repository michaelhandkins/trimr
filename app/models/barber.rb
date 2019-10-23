class Barber < ApplicationRecord
  mount_uploader :profile_picture, PhotoUploader
  
  belongs_to :user
  has_many :haircuts
  has_many :photos

  validates :name, presence: true
  validates :profile_picture, presence: true
  validates :phone_number, presence: true
  validates :zip_code, presence: true
  validates :barber_bio, presence: true
  validates :booking_site_url, presence: true
  validates :city, presence: true
  validates :state, presence: true

  geocoded_by :zip_code
  after_validation :geocode
end
