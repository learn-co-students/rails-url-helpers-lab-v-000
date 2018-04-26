Rails.application.routes.draw do
  resources :students, only: [:index, :show]
  get '/students/:id/activate' => 'students#activate', as: 'activate_student'
end
