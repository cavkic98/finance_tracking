Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "user/registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#index'

  get 'myportfolio', to: 'users#myportfolio'

  get 'search_stocks', to: 'stocks#search'

  get 'myfriends', to: 'users#myfriends'

  resources :users, only: [:show]

  resources :friendships

  resources :user_stocks, only: [:create, :destroy]


end
