class SessionController < ApplicationController

  def new
  end

	def create
		$current_user = ""

		account = Account.find_by(username: params[:session][:username])
		if account && account.authenticate(params[:session][:password])
			# log in
			$current_user = account.username
			redirect_to alert_type_path
		else
			redirect_to login_path
		end
	end

	def destroy
	end
end
