Rails.application.routes.draw do

  root 'pages#home'
	
	get 'pages/alert_type'

	get 'pages/alert'

	get 'pages/alert_message'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
