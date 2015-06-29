class EventsController < ApplicationController
	before_action :authenticate_user!, :except =>[:index, :show]

  def index
  	@events = Event.all.order(:id=>:desc)


  end

  def new
  	@event = Event.new
  end

  def create
  	@event = Event.new(event_params)
  	@event.user = current_user
  	if @event.save
  		flash[:notice] = "You've created one event"
  		redirect_to events_path
  	else
  		render :new
  	end
  end

  def show
		@event = Event.find(params[:id])
  end

  def edit
		@event = Event.find(params[:id])
  end

  def update
		@event = Event.find(params[:id])
		if @event.update(event_params)
  		flash[:notice] = "You've updated one event"
  		redirect_to events_path
  	else
  		render :edit
  	end
  end

  def destroy
		@event = Event.find(params[:id])
		@event.destroy
		flash[:notice] = "You've delete the event"		
		redirect_to events_path
  end

private
	def event_params
		params.require(:event).permit(:name, :content)

	end

end
