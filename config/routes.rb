Rails.application.routes.draw do
  resources :students
  get 'students/:id', to: 'students#activate', as: :activate_student


end
