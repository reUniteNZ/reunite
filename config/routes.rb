Rails.application.routes.draw do
  get 'start_location/new'

  post 'start_location/create', as: 'start_location_create'

  get 'start_location/index', as: 'start_location_menu'

  get 'reunite/index'

  get 'drill/index'

  resources :plan

  get 'action_menu/index', as: 'action_menu'

  get 'welcome/index'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
   root :to => 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
