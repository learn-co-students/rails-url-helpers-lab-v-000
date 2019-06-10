Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #"rake routes" to look at routes in order to make this easier.
  resources :students, only: [:index, :show]
  #resources table_name, only [methods implemented]
  get 'students/:id/activate', to: 'students#activate', as: 'activate_student'
  
  #get (URI Pattern/route) to controller#method as (path)
  
  #rails magic knows this ^ relates the activate method to the path
  
  #everything after the as is the path name
  
  #tests looks for pathname_path in which is placed in the routes list as: pathname
end
