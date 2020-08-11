Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
get "/", to: "ridealongs#homepage", as: "homepage"
get "/about", to: "ridealongs#about"

resources :passengers
resources :drivers
resources :rides
end
