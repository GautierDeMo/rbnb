class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :dream
  enum status: [:active, :archived, :decline]
  validates :reservation_date, presence: true
end
