Rails.application.routes.draw do
  # get 'work/index'
  # get 'work/choose_theme'
  # get 'work/display_theme'
  resources :themes
  resources :images
  resources :values
  resources :users
  resources :sessions
  root 'main#index'
  get 'main/index'
  get 'main/help'
  get 'main/contacts'
  get 'main/about'
  namespace :api, defaults: { format: :json } do
    match 'next_image', to: 'api#next_image', via: :get
    match 'prev_image', to: 'api#prev_image', via: :get
    match 'save_value',       to: 'api#save_value',   via: :get
  end

  match 'signup',       to: 'users#new',         via: 'get'
  match 'signing',      to: 'sessions#new',      via: 'get'
  match 'signout',      to: 'sessions#destroy',  via: 'delete'
  match 'signout',      to: 'sessions#destroy',  via: 'get'
  match 'results_list', to: 'work#results_list', via: :get

  match 'work',             to: 'work#index',             via: 'get'
  match 'choose_theme',     to: 'work#choose_theme',      via: 'get'
  match 'display_theme',    to: 'work#display_theme',     via: 'post'

end
