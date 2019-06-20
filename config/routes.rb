Rails.application.routes.draw do
  get 'sessions/new'
  get "users/show"
  root "static_pages#home"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/signup", to: "users#new"
  delete "/logout", to: "sessions#destroy"

  resources :users
end
