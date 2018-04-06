class AccountsController < ApplicationController
	def show
	end

	def new
		@account = Account.new(username: "username", email: "you@email.com", password: "test", password_confirmation: "test")
	end

	def create
		@account = Account.new(user_params)

		if @account.save
			redirect_to login_path
		else
			render 'new'
		end

	end

	private
		def user_params
      params.require(:account).permit(:username, :email, :password, :password_confirmation)
		end
end
