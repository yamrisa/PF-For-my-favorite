class Public::EventsController < ApplicationController
  def index
    @user = current_user
    @events = Event.where(user_id: current_user.id)
    @event = Event.new
  end
  
  def create
    @event = Event.new(event_params)
    @event.user_id = current_user.id
    @event.save
    redirect_to events_path(current_user)
  end
  
  def show
    @event = Event.find(params[:id]) 
  end

  def edit
    @event = Event.find(params[:id]) 
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    redirect_to events_path(current_user)
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path(current_user)
  end

  private

  def event_params
    params.require(:event).permit(:user_id, :title, :start_time)
  end
  
end
