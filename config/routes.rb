Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :students
  resources :instructors
  resources :courses
  resources :cohorts
  resources :users

  post '/cohorts/:id/addstudents', to: 'cohorts#addstudents'

  post '/cohorts/:id/removestudent', to: 'cohorts#removestudent'

end
