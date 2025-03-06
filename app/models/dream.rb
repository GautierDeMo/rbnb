class Dream < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews
  has_one_attached :picture

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

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
