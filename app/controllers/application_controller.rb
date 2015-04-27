class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :authenticate
  protect_from_forgery with: :exception
  
  include SessionsHelper

private
def authenticate
  return if controller_name == "pages"
  if !logged_in?
    flash[:alert] = "Must be logged in!"
    redirect_to root_path
  end
end

end
