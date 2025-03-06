class Dream < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :global_search,
  against: [:title, :description],
  associated_against: {
    user: [:username]
  },
  using: {
    tsearch: { prefix: true }
  }

  belongs_to :user
  has_many :bookings
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
