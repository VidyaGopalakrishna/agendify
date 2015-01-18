class EventsController < ActionController::Base
	before_action :authenticate_agendify_user!

	def calendar
		@message = "calendar"
	end

	def post_event
		event = Event.new
		event.event_name = params[:title]
		event.event_date = params[:start]
		event.save
		redirect_to root_path
	end

end