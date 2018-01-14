Rails.application.routes.draw do
  resources :students, only: [:index, :show]
  # get '/students', to: "students#index"
  # This show route can be refactored into the above resources method call, like so:
  # resources :students, only: [:index, :show]
  # However, for the sake of this lab and seeing how you can pass params through
  # the route, we'll keep it explicit for now and refactor later.
  # get "/students/:id", to: "students#show"
  match "/students/:id/activate", to: 'students#update', as: 'activate_student', via: :get
  # match "/students/:id/activate", to: 'students#update', via: :post
end
