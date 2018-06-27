Rails.application.routes.draw do
  resources :students, only: [:index, :show]

  #get "students", to: "students#index"
  #get "students/:id", to: "students#show"
  get "students/:id/activate", to: "students#activate", as: 'activate_student'
end
