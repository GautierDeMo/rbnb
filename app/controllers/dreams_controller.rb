class DreamsController < ApplicationController
  def index
    @dreams = Dream.all
  end

  def show
    @dream = Dream.find(params[:id])
  end

  def new
    @dream = Dream.new
  end

  def create
    @dream = Dream.new(dream_params)
    @dream.save
    redirect_to dream_path(@dream)
  end

  private

  def dream_params
    params.require(:dream).permit(:title, :description, :picture, :category, :price)
  end
end
