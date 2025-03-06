class ReviewsController < ApplicationController
  def new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    puts 'avant la recherche'
    @dream = Dream.find(params[:dream_id])
    puts 'après la recherche'
    @review.dream = @dream
    @review.save
    redirect_to dream_path(@dream)
  end

  private

  def review_params
    params.require(:review).permit(:content, :user_id, :dream_id)
  end

end
