Rails.application.routes.draw do
  root 'trivia#index'
  post '/', to: 'trivia#guess'
  resources :marriages
  resources :celebrities
  # devise - do not allow signup yet - only admins should be able to login in (for now)
  devise_for :users, skip: :registrations
  
end
