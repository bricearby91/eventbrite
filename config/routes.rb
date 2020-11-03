Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: 'events#index'
	resources :events, only: [:show, :index, :new]
	resources :users, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
