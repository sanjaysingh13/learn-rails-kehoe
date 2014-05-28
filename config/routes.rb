Rails.application.routes.draw do
  resources :films

  get 'static_pages/home'

  get 'static_pages/about'
match '/addfilm', to: 'films#new', via:'get'

  resources :contacts, only: [:new, :create]
  resources :visitors, only: [:new, :create]
  root to: 'visitors#new'
end
