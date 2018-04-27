class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  @location = Location.new
  @locations = Location.all
  $locations = @locations

  def reset_app
    cookies[:alert_type] = ""
    cookies[:emergency] = ""
    # log out
    cookies[:username] = ""
    redirect_to login_path
  end

end
