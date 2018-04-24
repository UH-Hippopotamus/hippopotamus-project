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
	get 'landslide_button' => 'pages#set_landslide_type'
	get 'flashflood_button' => 'pages#set_flashflood_type'
	get 'tsunami_button' => 'pages#set_tsunami_type'
	get 'missile_button' => 'pages#set_missile_type'
  get 'create_alert'  => 'pages#create_alert'

  get 'redo_type' =>  'pages#wipe_alert_type'
	get 'redo_emergency' => 'pages#wipe_emergency_type'

	get 'reset_app' => 'application#reset_app'

	resources :accounts
	resources :alert
	resource  :locations

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

