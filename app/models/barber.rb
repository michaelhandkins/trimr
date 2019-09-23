class Barber < ApplicationRecord
  belongs_to :user
  has_many :haircuts
end
