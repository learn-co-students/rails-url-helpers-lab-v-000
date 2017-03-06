Rails.application.routes.draw do
  resources :students, only: [:index, :show, :activate]

  get 'students/:id' => 'students#show'
  get 'students' => 'students#index'
  get 'students/:id/activate' => 'students#activate', :as => :activate_student
end
