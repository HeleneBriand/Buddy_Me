class EventsController < ApplicationController
  before_action :set_event, :only [:show, :destroy]
  
  def index
    @events = Event.all
  end

  def show; end

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

  def destroy
    @event.destroy
    # redirect_to buddies_path status: :see_other
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end
end
