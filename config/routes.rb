Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

# sheds 
  get "/sheds", to: "sheds#index"
  get "/sheds/:id", to: "sheds#show"

# tools
  get "/sheds/:id/tools", to: "shed_tools#index"
  
end
