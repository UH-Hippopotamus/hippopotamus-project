class PagesController < ApplicationController

=begin
    These methods set the metadata for the alert that is being constructed.
=end

	def set_alert_test
    cookies[:alert] = "TEST"
		redirect_to alert_path
	end

	def set_alert_live
    cookies[:alert] = "LIVE"
		redirect_to alert_path
  end

	def set_landslide_type
    cookies[:emergency] = "Landslide"
		redirect_to alert_message_path
	end

	def set_flashflood_type
    cookies[:emergency] = "Flash Flood"
  	redirect_to alert_message_path
  end

  def set_tsunami_type
    cookies[:emergency] = "Tsunami"
  	redirect_to alert_message_path
  end

  def set_missile_type
    cookies[:emergency] = "Missile"
  	redirect_to alert_message_path
  end

=begin
    The following two methods are called when the back button is clicked in the alert type selection menu or the
    emergency type election menu. It resets the initial value to an empty string to update the nav-bar.
=end

  def wipe_alert_type
    cookies[:alert] = ""
    redirect_to alert_type_path
  end

  def wipe_emergency_type
    cookies[:emergency] = ""
    redirect_to alert_path
  end

  def generate_message
    cookies[:message] = ""
    cookies[:message] = "Please be advised this is a "+ cookies[:alert] +" alert. There is a "+ cookies[:emergency] +" warning in effect for the areas: " + cookies[:locations]
    redirect_to alert_message_path
  end

  def parse_comments
    comments_from_form = params['myform']['comments']
    #do your stuff with comments_from_form here
    cookies[:locations] = comments_from_form
    redirect_to alert_message_path
  end

  def create_alert
    cookies[:message] = params[:message]
    puts "____________________________________________________________"
    puts cookies[:message]
    @alert = Alert.new(alert_type: cookies[:alert], emergency_type: cookies[:emergency], affected_areas: cookies[:locations], alert_message: cookies[:message], user: cookies[:username], status: "ACTIVE")
    if @alert.save
       @message = ""
      redirect_to back_home_path
    else
      render 'new'
    end
  end

end