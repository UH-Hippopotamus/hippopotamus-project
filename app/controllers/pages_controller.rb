class PagesController < ApplicationController

=begin
    These methods set the metadata for the alert that is being constructed.
=end

	def set_alert_test
		$alert_selected = "TEST"
		redirect_to alert_path
	end

	def set_alert_live
		$alert_selected = "LIVE"
		redirect_to alert_path
	end

	def set_landslide_type
		$emergency_selected = "Landslide"
		redirect_to alert_message_path
	end

	def set_flashflood_type
  	$emergency_selected = "Flash Flood"
  	redirect_to alert_message_path
  end

  def set_tsunami_type
  	$emergency_selected = "Tsunami"
  	redirect_to alert_message_path
  end

  def set_missile_type
  	$emergency_selected = "Missile"
  	redirect_to alert_message_path
  end

=begin
    The following two methods are called when the back button is clicked in the alert type selection menu or the
    emergency type election menu. It resets the initial value to an empty string to update the nav-bar.
=end

  def wipe_alert_type
    $alert_selected = ""
    redirect_to alert_type_path
  end

  def wipe_emergency_type
    $emergency_selected = ""
    redirect_to alert_path
  end

  def create_alert
    @message = params[:message]
    @location = params[:location]

    puts "_______________________________________________________________"

    puts @message
    puts @location
    @alert = Alert.new(alert_type: $alert_selected, emergency_type: $emergency_selected, affected_areas: @location, alert_message: @message, user: $current_user, status: "active")
    if @alert.save
      redirect_to reset_app_path
    else
      render 'new'
    end
  end

end