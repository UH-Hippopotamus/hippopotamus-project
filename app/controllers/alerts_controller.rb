class AlertsController < ApplicationController

  def new
    @alert = Alert.new(alert_type: "Blank", emergency_type: "Blank", affected_areas: "NONE", alert_message: "Message", user: "Blank", status: "active")
    redirect_to alert_type_path
  end
 def index
      @alert = Alert.new
 end
end
