class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  @location = Location.new
  @locations = Location.all
  $locations = @locations

  def reset_app
    cookies.delete :username
    cookies.delete :alert
    cookies.delete :emergency
    cookies[:locations] = " "
    redirect_to login_path
  end

end
