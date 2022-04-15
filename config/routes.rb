Rails.application.routes.draw do
  root 'welcomes#index'
  resources :welcomes, only: :index
  resources :posts do
    resources :comments, only: %i[index create new destroy]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
