class BookingsController < ApplicationController
  before_action :set_dream, only: [:new, :create]


  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.dream = @dream
    @booking.save
    redirect_to dashboard_path()
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_path()
  end

  def accept
    @booking = Booking.find(params[:id])
    @dream = Dream.find(@booking.dream.id)
    @booking.accepted!
    redirect_to dashboard_path()
  end

  def decline
    @booking = Booking.find(params[:id])
    @dream = Dream.find(@booking.dream.id)
    @booking.decline!
    redirect_to dashboard_path()
  end

  private

  def booking_params
    params.require(:booking).permit(:reservation_date, :user_id, :dream_id)
  end

  def set_dream
    @dream = Dream.find(params[:dream_id])
  end
end
