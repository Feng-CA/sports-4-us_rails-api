Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "activities", to: "activities#index", as: "activities"
  post "activities", to: "activities#create"
  get "activities/new", to: "activities#new", as: "new_activity"
  get "activities/:id", to: "activities#show", as: "activity"
  put "activities/:id", to: "activities#update"
  patch "activities/:id", to: "activities#update"
  delete "activities/:id", to: "activities#destroy", as: "delete_activity"

end
