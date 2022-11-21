class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(params[:user_id][:buddy_id])
    if @event.save
      redirect_to buddies_path(@buddies)
    else
      render :new, status: :unprocessable_entity
    end
  end
end
