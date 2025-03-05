class PagesController < ApplicationController
  def dashboard
    @user = current_user
    @bookings = @user.bookings
    @dreams = @user.dreams
    @allbookings = Booking.all
  end
end
