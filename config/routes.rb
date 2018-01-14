Rails.application.routes.draw do
  resources :students, only: :index

  # This show route can be refactored into the above resources method call, like so:
  # resources :students, only: [:index, :show]
  # However, for the sake of this lab and seeing how you can pass params through
  # the route, we'll keep it explicit for now and refactor later.
  get "student/:id", to: "students#show", as: 'student'
  get "/student/:id/activate", to: "students#activate", as: "activate_student"
  post "/student/:id/toggle", to: "students#toggle_state", as: "toggle_state_student"
end
