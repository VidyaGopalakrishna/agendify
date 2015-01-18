class ContactsController < ActionController::Base
	before_action :authenticate_agendify_user!
	
	def index
		@page_title = "My Contacts"
	end

	def post_contact
		print params
		contact = Contact.new
		contact.first_name = params[:first_name]
		contact.last_name = params[:last_name]
		contact.phone_number = params[:phone_number]
		contact.email = params[:email]
		contact.save
		redirect_to root_path
	end

end