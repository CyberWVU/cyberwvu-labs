CyberwvuLabs::Application.routes.draw do
  get "questions/create"
  get "home/index"
	root 'home#index'
resources :lab_templates do
    resources :questions
end
end
