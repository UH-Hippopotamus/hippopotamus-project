class SessionController < ApplicationController

  def new
  end

	def create
		$current_user = ""

    Alert.find_each do |alert|
      puts alert.alert_message
    end

		account = Account.find_by(username: params[:session][:username])
		if account && account.authenticate(params[:session][:password])
			# log in
			$current_user = account.username
			redirect_to construct_alert_path
		else
			redirect_to login_path
		end
	end

	def destroy
	end
end
