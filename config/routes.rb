Rails.application.routes.draw do
  resources :students, only: [:index, :show]
  get '/student/:id/edit', to: 'students#edit', as: 'activate_student'

  # This show route can be refactored into the above resouces' method call above, like so:
  # resources :students, only: [:index, :show]
  # However for the sake of this lab and seeing
  # how you can pass params through the
  # route, we'll keep it explicit and refactor it later

end
