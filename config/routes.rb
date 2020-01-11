Rails.application.routes.draw do
  resources :levels
  resources :hards
  resources :media
  resources :smooths
  resources :authors
  resources :works
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'works#index'
end
