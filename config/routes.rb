Rails.application.routes.draw do

  root to: 'pages#home'
  devise_for :users
  resources :users

resources :quotations do
  resources :business_proposals, only: [:show, :index, :new]
end


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

resources :staffs do
  resources :mission_staffs, only: [:index] do
    resources :missions, only: [:new, :create]
  end
end

resources :trainings do
  resources :training_staffs, only: [:index] do
    resources :missions, only: [:new, :create]
  end
end

# resources :missions do
#   resources :trainings, only: [:index, :new, :show]
# end

# resources :missions do
#   resources :equipments, only: [:index, :new, :show]
# end

  resources :opportunities, only: [:index] do
      resources :quotations, only: [:index, :new, :show, :edit, :update, :create] do
        resources :missions, only: [:new, :create, :destroy, :update, :show]
      end
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :missions, only: [:show] do
    resources :mission_staffs, only: [:new, :create]
    resources :mission_trainings, only: [:new, :create]
    resources :mission_equipments, only: [:new, :create]
  end
end
