Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # resources :dogs

  get "/dogs" => "dogs#index"
  get "/dogs/:breed" => "dogs#show"
end
