Rails.application.routes.draw do
  resources :students, only: :index
  # making /students/activate appear as /activate_student_path
  get "students/:id/activate", to: "students#activate", as:"activate-student"
  resources :students, only: :show
end
