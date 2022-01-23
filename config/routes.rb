Rails.application.routes.draw do
  resources :prescriptions
  resources :questions
  resources :anamnesis_consultations
  resources :anamnesis
  resources :consultations
  devise_for :doctors
  devise_for :patients
  resources :occupation_areas

  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
