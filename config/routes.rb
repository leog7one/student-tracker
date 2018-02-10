Rails.application.routes.draw do

  resources :referrals
  resources :categories
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root 'students#index'
  
  resources :students

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end