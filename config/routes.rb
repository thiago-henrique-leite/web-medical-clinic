Rails.application.routes.draw do
  resources :prescriptions
  resources :questions
  resources :anamnesis_consultations
  resources :anamnesis
  resources :consultations
  devise_for :doctors
  devise_for :patients
  resources :specialities

  root 'home#index'

  get 'dashboard/patient', to: 'dashboard_patient#index'
  get 'dashboard/doctor', to: 'dashboard_doctor#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
