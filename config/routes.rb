Rails.application.routes.draw do
  resources :students, only: [:index, :show]
  # get '/activate', to: 'students#activate'
  get '/activate/:id', to: 'students#activate', as: 'activate_student'
end
