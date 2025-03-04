class Dream < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :picture
  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
end
