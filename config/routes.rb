Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/", to: "welcome#index"

  get "/sheds", to: "sheds#index"
  get "/sheds/new", to: "sheds#new"
  get "/sheds/:id", to: "sheds#show"
end
