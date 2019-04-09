Rails.application.routes.draw do
  resources :students, only: [:show, :index]

  get "students/:id/activate", to: 'students#activate', as: "activate_student"
end
