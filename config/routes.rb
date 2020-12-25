Rails.application.routes.draw do
  root 'trivia#index'
  post '/', to: 'trivia#guess'
  resources :marriages
  resources :celebrities
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
