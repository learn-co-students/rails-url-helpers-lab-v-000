Rails.application.routes.draw do

  get "students", to: "students#index"
  get "students/:id", to: "students#show", as: "student"
  get "students/:id/activate", to: "students#activate", as: "activate_student"

  # This show route can be refactored into the above resources method call, like so:
  # resources :students, only: [:index, :show]
  # However, for the sake of this lab and seeing how you can pass params through
  # the route, we'll keep it explicit for now and refactor later.
end
