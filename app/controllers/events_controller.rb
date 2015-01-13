class EventsController < ActionController::Base

	def post_event
		print params
		event = Event.new
		event.event_name = params[:title]
		event.event_date = params[:start]
		event.save
		redirect_to root_path
	end

end