class DreamsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @dreams = Dream.all
  end

  def show
    @dream = Dream.find(params[:id])
    @booking = Booking.new
  end

  def new
    @dream = Dream.new
  end

  def create
    @user = current_user
    @dream = Dream.new(dream_params)
    @dream.user_id = @user.id
    @dream.save
    redirect_to dream_path(@dream)
  end

  def destroy
    @dream = Dream.find(params[:id])
    @dream.destroy
    redirect_to dashboard_path()
  end
  private

  def dream_params
    params.require(:dream).permit(:title, :description, :picture, :category, :price)
  end
end
