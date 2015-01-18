class ContactsController < ActionController::Base
	before_action :authenticate_agendify_user!

	def index
		@page_title = "My Contacts"
		@contacts = current_agendify_user.contacts
	end

	def post_contact
		contact = Contact.new
		contact.first_name = params[:first_name]
		contact.last_name = params[:last_name]
		contact.phone_number = params[:phone_number]
		contact.email = params[:email]
		contact.save
		current_agendify_user.contacts.push(contact)
		current_agendify_user.save
		redirect_to root_path
	end

end