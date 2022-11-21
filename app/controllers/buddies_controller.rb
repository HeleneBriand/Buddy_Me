class BuddiesController < ApplicationController
  before_action :set_buddy, only: [:show]
  def index
    @buddies = Buddy.all
  end

  def show; end

  def new
    @buddy = Buddy.new
  end

  def create
    @buddy = Buddy.new(buddy_params)
    if @buddy.save
      redirect_to buddy_path(@buddy)
    else
      render :new, status: :unprocessable_entity
    end

  end

  def destroy
    @buddy.destroy
    redirect_to buddies_path status: :see_other
  end

  def set_buddy
    @buddy = Buddy.find(params[:id])
  end

  def buddy_params
    params.require(:buddy).permit(:description, :category)
  end
end
