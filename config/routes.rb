Rails.application.routes.draw do
  resources :student_subjects
  resources :subjects
  resources :students
  resources :professors

  root 'home#welcome'

end
