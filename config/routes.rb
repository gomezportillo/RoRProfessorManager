Rails.application.routes.draw do
  resources :student_subjects
  resources :subjects
  resources :students
  resources :professors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
