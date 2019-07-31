Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :students, only: [:index, :show]
  resources :activate_student, only: [:activate]

  get 'students/:id/activate', to: 'students#activate', as: 'activate_student'

  patch '/students/:id', to: 'students#update'
end
