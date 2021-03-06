Rails.application.routes.draw do

  
  resources :grade_levels
  resources :homerooms
  namespace :admin do
    root 'application#index'
    resources :users, only: [:index]
    resources :categories
    resources :referrals, only: [:index]
    resources :students, only: [:index]
    resources :homerooms
    resources :grade_levels
  end

  resources :categories
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root 'students#index'

  post 'students/upload', to: 'students#upload'
  
  resources :students do
    resources :referrals
  end
  
  resources :users do
    resources :referrals
  end

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end