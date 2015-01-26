require 'date'
class EventsController < ActionController::Base
	before_action :authenticate_agendify_user!

	def calendar
		@message = "calendar"
		@events = current_agendify_user.events
	end

	def post_event
		event = Event.new
		event.title = params[:title]
		event.start = params[:start]
		event.event_notes = params[:notes]
		event.event_color = params[:backgroundColor]
		event.save
		current_agendify_user.events.push(event)
		current_agendify_user.save
		redirect_to root_path
	end

	def get_events
		@events = current_agendify_user.events
		render json: @events
	end

end