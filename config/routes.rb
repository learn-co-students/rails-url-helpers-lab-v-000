Rails.application.routes.draw do
  resources :students, only: [:index, :show, :activate]

  get 'students/:id/activate', to: 'students#show', as:'activate_student'
end
