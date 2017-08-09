Rails.application.routes.draw do
  resources :cities
  root 'sessions#new'

  get 'sessions/index' => "sessions#index"
  get '/logout' => 'sessions#destroy'
  get 'dashboard/index' => "dashboard#index"
  get 'cities' => "cities#index"
  resource :sessions
  resource :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
