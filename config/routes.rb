Rails.application.routes.draw do
  resources :students, only: [:index, :show]
  #NOTE: maybe for stereotypical CRUD only
  get 'students/:id/activate', to: 'students#activate', as: 'activate_student' #NOTE: Adds path on it's own to the end

  # This show route can be refactored into the above resources method call, like so:
  # resources :students, only: [:index, :show]
  # However, for the sake of this lab and seeing how you can pass params through
  # the route, we'll keep it explicit for now and refactor later.
  # get "students/:id", to: "students#show" NOTE: don't need because resources line handles route parameters
end
