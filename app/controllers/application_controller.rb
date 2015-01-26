class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    if agendify_user_signed_in?
      redirect_to '/calendar'
    else
      @message = "Home Page"
    end
  end

end
