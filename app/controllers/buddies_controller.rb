class BuddiesController < ApplicationController

  def index
    @buddies = Buddy.all
  end

  def show
    @buddy = Buddy.find(params[:id])
  end

  def new
    @buddy = Buddy.new
  end

  def create
    @buddy = Buddy.new(buddy_params)
    if @buddy.save
      redirect_to buddy_path(@buddy)
    else
      render :new
    end

  end

  def destroy
  end

  def buddy_params
    params.require(:user).permit(:description, :category)

  end
end
