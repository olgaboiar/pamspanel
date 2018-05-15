Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :students
  resources :instructors
  resources :courses
  resources :cohorts

  post '/cohorts/:id/addstudents', to: 'cohorts#addstudents'
  post '/cohorts/:id/removestudent', to: 'cohorts#removestudent'

  post '/courses/:id/addcohorts', to: 'courses#addcohorts'
  post '/courses/:id/removecohort', to: 'courses#removecohort'

  post '/instructors/:id/addcohorts', to: 'instructors#addcohorts'
  post '/instructors/:id/removecohort', to: 'instructors#removecohort'

end
