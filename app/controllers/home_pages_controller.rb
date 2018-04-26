class HomePagesController < ApplicationController	

	def home
		@alerts = Alert.all.paginate(page: params[:page], per_page: 5).order(status: :asc, created_at: :asc)
	end
	
  def new
    cookies.delete :alert
    cookies.delete :emergency
    cookies.delete :message
    cookies[:locations] = " "
  end

  def deactivate
    id = params[:id]

    alert = Alert.find_by(id: id)
    alert.status = "DEACTIVATED"
    alert.save

    redirect_to home_path
  end

end

