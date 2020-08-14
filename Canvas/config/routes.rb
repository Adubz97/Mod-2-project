Rails.application.routes.draw do
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :students, only: [:index, :show]
  resources :professors, only: [:index, :show]
  resources :colleges, only: [:index, :show]
  resources :courses, only: [:index, :show]
  resources :registrations, only: [:index, :show]
 
  get "/", to: "universities#home"

end
