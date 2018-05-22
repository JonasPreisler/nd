Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  resources :icos
  resources :currencies
  devise_for :users
    root 'icos#index'
	get 'home/about'
	get 'home/lookup'
	get 'coins/list'
	post "/home/index" => 'home/index'
	post "currencies/index" => 'currencies/index'
	post "/coins/index" => 'coins/index'
	post "/coins/list" => 'coins/list'
end
