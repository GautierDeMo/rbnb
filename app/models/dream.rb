class Dream < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :picture
  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true

  DREAM_CATEGORIES = [
    "Aventure",
    "Surréaliste",
    "Fantastique",
    "Relaxant",
    "Mystère",
    "Romance",
    "Nostalgie",
    "Exploration",
    "Immersion"
  ]
end
