Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:index, :show]
  get '/students/:id/activate', to: 'students#activate_student', as: 'activate_student'
end


# hard coded path: '/students/#{@student.id}'
# route helper: student_path(@student)
# in the route helper you are calling _path on the student and passing
# in student as an argument. rails knows to pull the student.id
