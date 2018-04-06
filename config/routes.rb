Rails.application.routes.draw do

  get 'accounts/new'

  get 'session/new'

  root 'pages#home'
	
	get 'alert_type' => 'pages#alert_type'

	get 'alert' => 'pages#alert'

	get 'alert_message' => 'pages#alert_message'

	get  'signup' => 'accounts#new'
	post 'signup' => 'accounts#create'

	get     'login' => 'session#new'
	post    'login' => 'session#create'
	delete  'logout' => 'session#destroy'

	#resources :users
	resources :accounts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
