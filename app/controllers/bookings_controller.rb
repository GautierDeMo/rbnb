class BookingsController < ApplicationController
  before_action :set_dream

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    @booking.dream = @dream
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.dream = @dream
    @booking.save
    redirect_to dream_bookings_path(params[:dream_id])
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :dream_id)
  end

  def set_dream
    @dream = Dream.find(params[:dream_id])
  end
end
