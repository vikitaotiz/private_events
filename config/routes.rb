Rails.application.routes.draw do
  root 'events#index'
  devise_for :users

  resources :events
  resources :attended_events
end
