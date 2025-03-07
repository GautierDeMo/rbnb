class DreamsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    if params[:query].present?
      @dreams = Dream.global_search(params[:query])
    elsif params[:category].present?
      @dreams = Dream.where(category: params[:category])
    else
      @dreams = Dream.all
    end

    @markers = @dreams.geocoded.map do |dream|
      {
        lat: dream.latitude,
        lng: dream.longitude,
        info_window_html: render_to_string(partial: "dreams/info_window", locals: { dream: dream }, formats: :html),
        marker_html: render_to_string(partial: "dreams/marker", formats: :html)
      }
    end

    respond_to do |format|
      format.html
      format.json
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
    redirect_to dashboard_path()
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
