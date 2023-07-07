Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "sheds#index"

# sheds 
  get "/sheds", to: "sheds#index"
  get "/sheds/new", to: "sheds#new"
  post "/sheds", to: "sheds#create"
  get "/sheds/:id", to: "sheds#show"
# tools
  get "/tools", to: "tools#index"
  get "/tools/:id", to: "tools#show"
  
  get "/sheds/:id/tools", to: "shed_tools#index"
  get "/sheds/:id/tools/:id", to: "shed_tools#show"
end
