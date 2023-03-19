Rails.application.routes.draw do
  root to: 'homes#top'
  get '/homes/about' => 'homes#about',as:'about'
  devise_for :users
  resources :books, only: [:new, :create, :index, :show]
  resources :users, only: [:index, :show, :edit]
 end
