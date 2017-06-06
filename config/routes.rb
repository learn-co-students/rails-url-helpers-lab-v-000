Rails.application.routes.draw do
  resources :students, only: [:index, :show]

  get '/students/:id/active' => 'students#active', as: 'activate_student'
end
