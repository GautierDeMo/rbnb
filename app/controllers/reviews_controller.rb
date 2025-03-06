class ReviewsController < ApplicationController
  before_action :set_dream
  def create
    @review = @dream.reviews.new(review_params)
    @review.user = current_user
    if @review.save
      redirect_to @dream, notice: 'Review was successfully created.'
    else
      render 'dreams/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :user_id, :dream_id)
  end

  def set_dream
    @dream = Dream.find(params[:dream_id])
  end
end
