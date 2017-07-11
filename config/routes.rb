Rails.application.routes.draw do
  resources :students, only: [:index]
  resources :student, only: [:show]
  
  get '/student/:id/activate' => 'student#activate', :as => :activate_student



end
