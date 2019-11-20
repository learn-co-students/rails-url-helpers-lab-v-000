Rails.application.routes.draw do
  resources :students, only: [:index, :show]
  get 'student/:id/activate', to: 'students#activate', as: 'activate_student'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
