Rails.application.routes.draw do
 
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get "/", to: "universities#home", as: "home"
  get "/login", to: "universities#login", as: "login"
  get "/create", to: "universities#create", as: "create"

  get '/login/student', to: "sessions#login_student"
  post "/login/student", to: "sessions#process_login_student"

  get '/login/professor', to: "sessions#login_professor"
  post "/login/professor", to: "sessions#process_login_professor"

  delete "/logout", to: "sessions#logout"

  get "/professors/home", to: "professors#home", as: "professor_home"
  get "/professors/mycourses", to: "professors#mycourses", as: "professor_mycourses"
  
  get "/students/home", to: "students#home", as: "student_home"
  get "/students/mycourses", to: "students#mycourses", as: "student_mycourses"

  resources :students, only: [:index, :show, :new, :create]
  resources :professors, only: [:index, :show, :new, :create]
  resources :colleges, only: [:index, :show]
  resources :courses, only: [:index, :show]
  resources :registrations, only: [:index, :show]
 
  
end
