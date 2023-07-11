Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "sheds#index"

# sheds 
  get "/sheds", to: "sheds#index"
  get "/sheds/new", to: "sheds#new"
  post "/sheds", to: "sheds#create"
  get "/sheds/:id", to: "sheds#show"
  get "/sheds/:id/edit", to: "sheds#edit"
  patch "/sheds/:id", to: "sheds#update"
  delete "/sheds/:id", to: "sheds#destroy"
  # tools
  get "/tools", to: "tools#index"
  get "/tools/:id", to: "tools#show"
  delete "/tools/:id", to: "tools#destroy"
  # shed_tools
  get "/sheds/:id/tools/sort_alphabetically", to: "shed_tools#sort_alphabetically"
  get "/sheds/:id/tools", to: "shed_tools#index"
  get "/sheds/:id/tools/new", to: "shed_tools#new"
  post "/sheds/:id/tools", to: "shed_tools#create"
  get "/tools/:id/edit", to: "shed_tools#edit"
  patch "/tools/:id", to: "shed_tools#update"
end
