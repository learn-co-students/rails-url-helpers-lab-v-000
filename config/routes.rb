Rails.application.routes.draw do

  # This show route can be refactored into the above resources method call, like so:
  resources :students, only: [:index, :show]
  # However, for the sake of this lab and seeing how you can pass params through
  # the route, we'll keep it explicit for now and refactor later.

  #     URL                       controller class + action   new name of route
  get "/students/:id/activate", to: "students#activate", as: "activate_student"
  #     URL                    controller class + action
  # Activate page Should redirect to the student show page
end
