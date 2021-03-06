Rails.application.routes.draw do
  resources :subjects
  root to: 'pages#home'
  get 'pages/home'
  get "about" => "pages#about"

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:show]
  resources :events
  resources :profiles, only: [:new, :edit, :create, :update]
  resources :events do
    resources :registrations, only: [:create]
  end
  resources :photos
end
