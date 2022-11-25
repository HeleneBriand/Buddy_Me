class EventsController < ApplicationController
  before_action :set_event, only: [:show, :destroy]

  def index
    @buddy = Buddy.find(params[:buddy_id])
    @events = current_user.events
    @buddies = current_user.buddies
    @user = current_user
  end

  def show; end

  def create
    @event = Event.new
    @buddy = Buddy.find(params[:buddy_id])
    @event.user = current_user
    @event.buddy = @buddy
    @event.start_date = params[:event]["start_date"].split("to")[0]
    @event.end_date = params[:event]["start_date"].split("to")[1]
    if @event.save!
      redirect_to buddy_events_path
    else
      render buddy_path(@buddy), status: :unprocessable_entity
    end
  end


  def accept
    @event = Event.find(params[:id])
    @buddy = Buddy.find(params[:buddy_id])
    @event.status = "Accepted"
    @event.save!

    redirect_to buddy_events_path(@buddy, @event)
  end

  def decline
    @event = Event.find(params[:id])
    @buddy = Buddy.find(params[:buddy_id])
    @event.status = "Declined"
    @event.save!

    redirect_to buddy_events_path(@buddy, @event)
  end

  def destroy
    @event.destroy
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  # def event_params
  #   params.require(:event).permit(:status)
  # end
end
