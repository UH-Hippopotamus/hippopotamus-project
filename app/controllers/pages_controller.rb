class PagesController < ApplicationController

	def set_alert_test
		$alert_selected = "TEST"
		redirect_to alert_path
	end

	def set_alert_live
		$alert_selected = "LIVE"
		redirect_to alert_path
	end

	def alert_type
		$alert_selected = ""
	end

	def alert
	end

	def alert_message
	end

	def sign_up
	end
end
