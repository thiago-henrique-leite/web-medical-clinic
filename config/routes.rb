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
  get '/logout' => 'sessions#destroy'
  get '/consultation/:id/destroy', to: 'consultations#destroy'
  get '/prescription/:consultation_id/new', to: 'prescriptions#new'
  get '/consultation/:id/cancel_doctor', to: 'consultations#cancel_doctor'
  get '/consultation/:id/perform_doctor', to: 'consultations#perform_doctor'
  get '/consultation/:id/cancel_patient', to: 'consultations#cancel_patient'
  get '/consultation/:id/perform_patient', to: 'consultations#perform_patient'
  get '/anamnesis_consultation/:consultation_id/new', to: 'anamnesis_consultations#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
