Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:index, :show]
  # /students/:id/activate
  # get '/register', to: 'users#new', as: 'register'
  # get path, to: controller#method, as: controllerMethod_model
  get '/students/:id/activate', to: 'students#activate', as: 'activate_student'
end

 # it "Should mark an inactive student as active" do
 #    visit activate_student_path(@student)
 #    @student.reload
 #    expect(@student.active).to eq(true)
 #  end