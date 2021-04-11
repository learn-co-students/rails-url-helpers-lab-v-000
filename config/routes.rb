Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # I tried creating 2 individual routes but when I ran rails routes, the show route didn't have a prefix.
  # By changing to using the resources method, I was able to get the proper singular prefix for the show
  # route.
  resources :students, only: [:index, :show]
  # I was close when I poked at the solution to confirm. It's OK to have a non-CRUD path!! 
  # The key was to look at the test and see that is was expecting activate_student to find the
  # _path on. But I was hung up on using edit which wasn't necessary. Lesson learned.
  # Also, I tried to guess instead of looking at the instructions - 
  # whoopsie!
  get '/students/:id/activate', to: 'students#activate', as: 'activate_student'
end
