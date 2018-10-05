Rails.application.routes.draw do
  resources :students, only: [:index, :show]
  # resources :students do
  #   member do
  #     get 'activate'
  #   end
  # end
  # This show route can be refactored into the above resources method call, like so:
  # resources :students, only: [:index, :show]
  # However, for the sake of this lab and seeing how you can pass params through
  # the route, we'll keep it explicit for now and refactor later.
  # get "students/:id", to: "students#show"
  # defaults: { activate: true },
  get 'students/:id/activate', to: 'students#activate', as: 'activate_student'
end
