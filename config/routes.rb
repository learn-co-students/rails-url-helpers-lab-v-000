Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :students, only: [:show, :index]
  get '/students/:id/activate', to: 'students#activate', as: 'activate_student'
    
end