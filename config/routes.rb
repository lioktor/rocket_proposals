Rails.application.routes.draw do
  get 'business_proposals/index'
  get 'business_proposals/new'
  get 'business_proposals/create'
  get 'business_proposals/edit'
  get 'business_proposals/update'
  get 'business_proposals/show'
  get 'opportunities/index'
  get 'opportunities/new'
  get 'opportunities/create'
  get 'opportunities/edit'
  get 'opportunities/update'
  get 'opportunities/show'
  devise_for :users
  root to: 'pages#home'
  resources :users do
    resources :opportunities, only: [:new, :create, :index]
  end
  resources :clients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
