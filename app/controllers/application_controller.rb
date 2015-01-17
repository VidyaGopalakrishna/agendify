class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
  	@message = "Home Page"
  end

  def calender
  	@message = "Calender Page"
  end

  def contactdirectory
  	@message = "Contact Directory Page"
    @contacts = Contact.all
  end
end
