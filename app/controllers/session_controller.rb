class SessionController < ApplicationController

  def new
    puts "____DATABASE_CHECK____"
    Alert.all.each do |alert|
      puts alert.affected_areas
    end
  end

	def create
		$current_user = ""

		account = Account.find_by(username: params[:session][:username])
		if account && account.authenticate(params[:session][:password])
			# log in
      cookies[:username] = account.username
			redirect_to alert_type_path
		else
			redirect_to login_path
		end
	end

	def destroy
	end
end
