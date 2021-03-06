class SessionController < ApplicationController

  def new
    puts "____DATABASE_CHECK____"
    Alert.all.each do |alert|
      puts alert.id
    end
    cookies.delete :username
    cookies.delete :alert
    cookies.delete :emergency
    cookies.delete :message
    cookies[:locations] = " "
  end

	def create
		$current_user = ""

		account = Account.find_by(username: params[:session][:username])
		if account && account.authenticate(params[:session][:password])
			# log in
			cookies[:username] = account.username
			redirect_to home_path
		else
			redirect_to login_path
		end
	end

	def destroy
	end
end
