Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'restaurants#index'
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create]
    # Si reviews ajoutes dans la show d'un restaurant, on a plus besoin du :new
    # resources :reviews, only: [:create]
  end
end

  # resources :restaurants, only: [:index, :show, :new, :create] do
  #   member do
  #     get :reviews, only: [:show, :new, :create]
  #   end
  # end
