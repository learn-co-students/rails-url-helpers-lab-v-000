Rails.application.routes.draw do
  get "students", to: "students#index"
  get "students/:id", to: "students#show", as: "student"
  # two lines above are equivalent to -- resources :students, only: [:index, :show]
  get "students/:id/activate", to: "students#activate", as: "activate_student"
end
