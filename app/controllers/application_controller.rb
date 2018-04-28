class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  @location = Location.new
  @locations = Location.order(:location)
  $locations = @locations

  def reset_app
    cookies[:username] = " "
    cookies[:alert] = " "
    cookies[:emergency] = " "
    cookies[:locations] = " "
    redirect_to login_path
  end

  def back_to_home
    cookies.delete :alert
    cookies.delete :emergency
    cookies[:locations] = " "
    redirect_to home_path
  end

end
