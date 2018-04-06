class SessionController < ApplicationController
  def new
  end

	def create
		account = Account.find_by(username: params[:session][:username])
		if account && account.authenticate(params[:session][:password])
			# log in
			redirect_to alert_type_path
		else
			redirect_to signup_path
		end
	end

	def destroy
	end
end
