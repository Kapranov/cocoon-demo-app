Rails.application.routes.draw do
  resources :projects

  mount Upmin::Engine => '/admin'
  root to: 'projects#index'
  devise_for :users
  resources :users
end
