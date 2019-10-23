class Haircut < ApplicationRecord
  belongs_to :barber

  validates :haircut_name, presence: true
  validates :description, presence: true
  validates :cost, presence: true
end
