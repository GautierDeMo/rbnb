class RenameDateToReservationDateInBookings < ActiveRecord::Migration[7.1]
  def change
    rename_column :bookings, :date, :reservation_date
  end
end
