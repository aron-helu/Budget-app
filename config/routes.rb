Rails.application.routes.draw do
  devise_for :users
  # resources :splashes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users

  root "splashes#index"
  resources :categories do
    resources :payments
  end
end
