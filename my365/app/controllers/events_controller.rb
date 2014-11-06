class EventsController < ApplicationController

	def index
		@events = Event.all
	end

	def new
		@event = Event.new
	end

	def new_event
		@event = Event.new(event_params)
		if @event.save
			redirect_to event_path
		else
			redirect_to @event, notice: 'Error creating event.'
		end
	end

	def event_params
		params.require(:event).permit(:name, :event)
	end


	
end
