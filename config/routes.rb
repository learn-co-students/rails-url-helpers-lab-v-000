Rails.application.routes.draw do
  resources :students, only: [:index, :show]
  # above code replaces:
  # get '/students', to: 'students#index'
  # where route is GET request to localhost:3000/students, which maps to #index controller action (method) in StudentsController class
  # above code also replaces:
  # get '/students/:id', to: 'students#show'
  # where route is GET request to localhost:3000/students/@id value of student to be shown replaces :id route variable
  # route is mapped to #show controller action (method) in StudentsController class

  get '/students/:id/activate', to: 'students#activate', as: 'activate_student'
  # route is GET request to localhost:3000/students/@id value of student instance/activate
  # route is mapped to #activate action (method) in the StudentsController class
  # name of route is activate_student, which would become the prefix of the route helper method #activate_student_path(student),
  # which would return the href attribute value (string URL) of the link to the activate page
  # argument passed to #activate_student_path(student) route helper method would be the student instance, and Rails automatically uses its @id value to replace :id route variable
end
