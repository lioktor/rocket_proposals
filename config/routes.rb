Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  resources :users do
    resources :client, only: [:new]
  end
  resources :clients do
    resources :opportunities
  end
  resources :quotations
  # resources :opportunities, only: [:index, :new, :show]
  resources :missions do
    resources :trainings, only: [:index, :new, :show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
