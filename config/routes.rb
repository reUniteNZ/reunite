Rails.application.routes.draw do
  get 'start_location/new'

  get 'start_location/create'

  get 'start_location/index'

  get 'reunite/index'

  get 'drill/index'
  
  get 'drill/create'
  
  get 'drill/show'

  resources :plan

  get 'action_menu/index', as: 'action_menu'

  get 'welcome/index'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
   root :to => 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
