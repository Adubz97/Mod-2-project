Rails.application.routes.draw do
 
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get "/", to: "universities#home", as: "home"
  get '/login/student', to: "sessions#login_student"
  post "/login/student", to: "sessions#process_login_student"
  get '/login/professor', to: "sessions#login_professor"
  post "/login/professor", to: "sessions#process_login_professor"
  delete "/logout", to: "sessions#logout"


  resources :students, only: [:index, :show]
  resources :professors, only: [:index, :show]
  resources :colleges, only: [:index, :show]
  resources :courses, only: [:index, :show]
  resources :registrations, only: [:index, :show]
 
  
end
