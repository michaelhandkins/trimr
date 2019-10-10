class Barber < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :user
  has_many :haircuts
end
