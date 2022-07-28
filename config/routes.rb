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
  get "profiles/user_id", to: "profiles#find_user_profile", as: "find_user_profile"
  get "profiles/last", to: "profiles#last_profile", as: "last_profile"
  get "profiles/:id", to: "profiles#show", as: "profile" 
  post "profiles", to: "profiles#create"
  put "profiles/:id", to: "profiles#update" 
  patch "profiles/:id", to: "profiles#update"
  delete "profiles/:id", to: "profiles#destroy", as: "delete_profile"

  get "messages", to: "messages#index", as: "messages"
  get "messages/received", to: "messages#message_by_receiver", as: "received_messages"
  get "messages/sent", to: "messages#message_by_sender", as: "sent_messages"
  get "messages/all", to: "messages#all_user_messages", as: "all_messages"
  get "messages/:id", to: "messages#show", as: "message"
  post "messages", to: "messages#create"
  delete "messages/:id", to: "messages#destroy", as: "delete_messages"

  get "sentmessages", to: "sent_folders#index", as: "sent_folders"
  get "sentmessages/received", to: "sent_folders#message_by_receiver", as: "received_sent_folders"
  get "sentmessages/sent", to: "sent_folders#message_by_sender", as: "sent_sent_folders"
  get "sentmessages/all", to: "sent_folders#all_user_messages", as: "all_sent_folders"
  get "sentmessages/:id", to: "sent_folders#show", as: "sent_folder"
  post "sentmessages", to: "sent_folders#create"
  delete "sentmessages/:id", to: "sent_folders#destroy", as: "delete_sent_folders"


  get "users", to: "users#index", as: "users"
  get "users/last", to: "users#last_user", as: "last_user"
  get "users/:id", to: "users#show", as: "user"
  delete "users/:id", to: "users#destroy", as: "delete_user"
  scope '/auth' do
    post "/signup", to: "users#create"
    post "/signin", to: "users#sign_in"
  end
end
