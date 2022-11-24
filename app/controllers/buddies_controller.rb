class BuddiesController < ApplicationController
  before_action :set_buddy, only: [:show, :destroy]
  def index
    @buddies = Buddy.all
    if params[:query].present?
      sql_query = <<~SQL
        buddies.category @@ :query
        OR buddies.city @@ :query
      SQL
      @buddies = Buddy.joins(:user).where(sql_query, query: "%#{params[:query]}%")
    else
      @buddies = Buddy.all
    end
  end

  def show
    @event = Event.new
  end

  def new
    @buddy = Buddy.new
  end

  def create
    @buddy = Buddy.new(buddy_params)
    @buddy.user = current_user
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

  private

  def set_buddy
    @buddy = Buddy.find(params[:id])
  end

  def buddy_params
    params.require(:buddy).permit(:description, :category, :city, :photo)
  end
end


# OR user.buddy.name @@ :query
# OR user.buddy.sex @@ :query
