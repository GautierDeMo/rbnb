class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :dream
  enum status: { pending: 0, accepted: 1, decline: 2 }
  validates :reservation_date, presence: true
end
