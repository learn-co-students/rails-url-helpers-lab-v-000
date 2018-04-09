Rails.application.routes.draw do
  resources :students
  get "students/:id", to: "students#show"
  get "students/:id/activate", to: "students#activate", as: "activate_student"
end
