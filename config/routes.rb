Rails.application.routes.draw do
  resources :students, only: [:index, :show]
  get 'student/:id/activate', to: 'students#activate', as: 'activate_student'
end
