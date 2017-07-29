Rails.application.routes.draw do
  get 'plan/index'

  get 'action_menu/index', as: 'action_menu'

  get 'welcome/index'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
   root :to => 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
