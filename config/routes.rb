Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "activities", to: "activities#index", as: "activities"
  post "activities", to: "activities#create"
  get "activities/new", to: "activities#new", as: "new_activity"
  get "activities/:id", to: "activities#show", as: "activity"
  put "activities/:id", to: "activities#update"
  patch "activities/:id", to: "activities#update"
  delete "activities/:id", to: "activities#destroy", as: "delete_activity"

  get "categories", to: "categories#index", as: "categories"
  get "categories/:id", to: "categories#show", as: "category"
  

  get "profiles", to: "profiles#index", as: "profiles"
  get "profiles/last", to: "profiles#last_profile", as: "last_profile"
  get "profiles/:id", to: "profiles#show", as: "profile" 
  post "profiles", to: "profiles#create"
  put "profiles/:id", to: "profiles#update" 
  patch "profiles/:id", to: "profiles#update"
  delete "profiles/:id", to: "profiles#destroy", as: "delete_profile"


  get "users", to: "users#index", as: "users"
  get "users/:id", to: "users#show", as: "user"
  scope '/auth' do
    post "/signup", to: "users#create"
    post "/signin", to: "users#sign_in"
  end
end
