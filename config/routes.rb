CyberwvuLabs::Application.routes.draw do
  get "home/index"
  root 'home#index'
  
  resources :lab_templates do
    resources :questions
  end

  resources :lab_answers
end
