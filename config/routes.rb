Rails.application.routes.draw do

  get "/students/:id/activate_student", to: "students#update", as: "activate_student"
  resources :students, only: [:index, :show]

  # This show route can be refactored into the above resources method call, like so:
  # resources :students, only: [:index, :show]
  # However, for the sake of this lab and seeing how you can pass params through
  # the route, we'll keep it explicit for now and refactor later.

end
