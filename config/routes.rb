Rails.application.routes.draw do
  resources :students, only: [:index, :show, :activate]
  # resources :students, :activate
  # resources :activate_student, only: [:index, :show]
  resources :activate
  resources 'activate_student', :only => [:new, :create]


  # This show route can be refactored into the above resources method call, like so:
  # resources :students, only: [:index, :show]
  # However, for the sake of this lab and seeing how you can pass params through
  # the route, we'll keep it explicit for now and refactor later.
  # []
  # get "students/", to: "students#index"
  get "students/:id", to: "students#show"
  get "students/activate_student", to: "students#activate_student"
  # get "students/activate_student", to: "students#activate_student_path"
end
