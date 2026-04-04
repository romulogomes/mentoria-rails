Rails.application.routes.draw do
  root "hello#index"

  get "/products", to: "product#index"
  
  get "/products/:id", to: "product#show"

  get "/users", to: "usuario#index"
  get "/users/:id", to: "usuario#show"
  post "/users", to: "usuario#create"

end
