class EventsController < ApplicationController
  before_action :set_event, only: [:show, :destroy]

  def index
    @events = current_user.events
    
  end

  def show; end

  def create
    @event = Event.new
    @buddy = Buddy.find(params[:buddy_id])
    @event.user = current_user
    @event.buddy = @buddy
    if @event.save!
      redirect_to buddy_events_path
    else
      render buddy_path(@buddy), status: :unprocessable_entity
    end
  end

  def destroy
    @event.destroy
    # redirect_to buddies_path status: :see_other
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end
end
