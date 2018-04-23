Rails.application.routes.draw do

  root "session#new"
	
	get 'pages/home'

	get 'login' => 'session#new'
	get 'alert_type' => 'pages#alert_type'
	get 'alert' => 'pages#alert'

	get 'alert_message' => 'pages#alert_message'

	get  'signup' => 'accounts#new'
	post 'signup' => 'accounts#create'

	get     'login' => 'session#new'
	post    'login' => 'session#create'
	delete  'logout' => 'session#destroy'

	get 'test_button' => 'pages#set_alert_test'
	get 'live_button' => 'pages#set_alert_live'

	resources :accounts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

