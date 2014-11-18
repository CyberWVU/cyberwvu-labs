CyberwvuLabs::Application.routes.draw do
  devise_for :users

  get "questions/create"

  get "home/index"
  root 'home#index'
  
  resources :lab_templates do
    resources :questions
  end

  resources :lab_answers
end
