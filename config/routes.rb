Rails.application.routes.draw do
  resources :students, only: [:index, :show]
  #resources will append and map all the standard restful routes like new,index create to the uri you specify
  #in resources: Above though is only mapping students/index and students/show

  # This show route can be refactored into the above resources method call, like so:
  # resources :students, only: [:index, :show]
  # However, for the sake of this lab and seeing how you can pass params through
  # the route, we'll keep it explicit for now and refactor later.
  #get "students/:id", to: "students#show"
  get "students/:id/activate", to: "students#activate", as: 'activate_student'

end
