class ContactsController < ActionController::Base
	before_action :authenticate_agendify_user!

	# This function is executed when the url: localhost:3000/contacts is entered.
	# It then serves up the contacts page and displays the current user's contacts
	def index
		@page_title = "My Contacts"
		@contacts = current_agendify_user.contacts
	end

	# This function receives contact information from the user
	# It then saves the contact to the DB and pushes it to the user's contacts
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