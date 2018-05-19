Rails.application.routes.draw do
  resources :students, only: [:index, :show]

  get '/students/:id/activate' => "students#activate_student", as: 'activate_student'


end
