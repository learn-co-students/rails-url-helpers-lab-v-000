Rails.application.routes.draw do
  resources :students, only: [:index, :show]

  # This show route can be refactored into the above resources method call, like so:
  # resources :students, only: [:index, :show]
  # However, for the sake of this lab and seeing how you can pass params through
  # the route, we'll keep it explicit for now and refactor later.
#  get "students/:id", to: "students#show", as: "student"

  #the "as: "student" allows our index.html.erb and show.html erb to find student in student_path"
  # or
  #get "students/:id", to: "students#show", :as => "student"
  get "students/:id/activate", to: "students#activate", :as => "activate_student"
  #:as sets the prefix for route helper methods/actions
  #get sets get request path received by url
  #to: sets controller and action(method) ie: in students controller this will map to an active action (method)

end
