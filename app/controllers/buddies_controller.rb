class BuddiesController < ApplicationController
  before_action :set_buddy, only: %i[edit update show destroy]
  def index
    @buddies = Buddy.all
    if params[:query].present?
      @buddies = Buddy.global_search(params[:query])
    else
      @buddies = Buddy.all
    end
    # @buddies = FBuddy.all
    # The `geocoded` scope filters only flats with coordinates
    @markers = @buddies.geocoded.map do |buddy|
      {
        lat: buddy.latitude,
        lng: buddy.longitude,
        info_window: render_to_string(partial: "info_window", locals: {buddy: buddy})
      }
    end
  end

  def show
    @event = Event.new
    # @buddies = Buddy.all
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

  def edit; end

  def update
    if @buddy.update(buddy_params)
      redirect_to buddy_events_path(@buddy)
    else
      render :new
    end
  end

  def destroy
    @buddy.destroy
  end

  private

  def set_buddy
    @buddy = Buddy.find(params[:id])
  end

  def buddy_params
    params.require(:buddy).permit(:description, :category, :city)
  end
end


# OR user.buddy.name @@ :query
# OR user.buddy.sex @@ :query
