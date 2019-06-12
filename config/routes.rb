Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  resources :users

  resources :business_proposals, only: [:show, :index]


  get "pages/dashboard" # ligne créée suite à création landing page


  resources :clients do
    resources :opportunities  do
      collection do
        get 'myopportunities'
      end
    end
  end

# resources :quotations do
#   resources :missions, only: [:new, :create]
# end

  resources :missions do
    resources :trainings, only: [:index, :new, :show]
  end

  resources :opportunities, only: [:index] do
      resources :quotations, only: [:index, :new, :show, :edit, :update, :create] do
        resources :missions, only: [:new, :create, :destroy]
      end
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
