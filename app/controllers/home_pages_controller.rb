class HomePagesController < ApplicationController
  require 'will_paginate'

	def home

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

  def activate
    puts "________________________________________"
    puts "ACTIVATE BUTTON CLICKED"
    id = params[:id]
    puts id

    alert = Alert.find_by(id: id)
    alert.status = "ACTIVE"
    alert.save

    redirect_to home_path
  end

end

