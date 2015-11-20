Rails.application.routes.draw do
  resources :students, only: :index
  get '/student/:id', to: 'students#show', as: 'student'
end
