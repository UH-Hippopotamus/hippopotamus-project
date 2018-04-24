class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def reset_app
    $alert_selected = ""
    $emergency_selected = ""
    # log out
    $current_user = ""
    redirect_to login_path
  end

end
