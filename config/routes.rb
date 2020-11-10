Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create]
    # resources :reviews, only: [:create]

  end
end

  # resources :restaurants, only: [:index, :show, :new, :create] do
  #   member do
  #     get :reviews, only: [:show, :new, :create]
  #   end
  # end
