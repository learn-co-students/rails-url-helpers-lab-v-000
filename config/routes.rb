Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:index, :show]
  get 'students/:id/activate', to: 'students#activate', as: 'activate_student'
  #get (route) to controller#method as (path)
  #rails magic knows this ^ relates the activate method to the path
  #everything after the as is the path name
  #rake routes to look at routes
  #tests looks for pathname_path
end
