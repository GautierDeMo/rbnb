class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :dream

  validates :reservation_date, presence: true
end
