Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "api/auth/login", to: "users#login"      #Login route
  get "api/schedules", to: "schedules#index"    #Get all Schedules
  post "api/schedules/create", to: "schedules#create" #Create Schedules
end
