Rails.application.routes.draw do
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'pages#home'

  get 'signup', to: 'users#new', as: 'users_signup'
  resources :users, except: [:new]
end
