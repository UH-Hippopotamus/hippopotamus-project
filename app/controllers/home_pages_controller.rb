class HomePagesController < ApplicationController

  def new
    cookies.delete :alert
    cookies.delete :emergency
    cookies.delete :message
    cookies[:locations] = " "
  end

  def deactivate
    puts "________________________________________"
    puts "DEACTIVATE BUTTON CLICKED"
    id = params[:id]
    puts id

    alert = Alert.find_by(id: id)
    alert.status = "DEACTIVATED"
    alert.save

    redirect_to home_path
  end

end
