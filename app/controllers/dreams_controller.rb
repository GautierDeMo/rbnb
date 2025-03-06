class DreamsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    if params[:category].present?
      @dreams = Dream.where(category: params[:category])
    else
      @dreams = Dream.all
    end

    # The `geocoded` scope filters only dreams with coordinates
    @markers = @dreams.geocoded.map do |dream|
      {
        lat: dream.latitude,
        lng: dream.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {dream: dream}),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end

  def show
    @dream = Dream.find(params[:id])
    @booking = Booking.new
    @reviews = Review.all
    @review = Review.new
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
