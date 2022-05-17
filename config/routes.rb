Rails.application.routes.draw do
  devise_for :users
  root to: "records#index"
  resources :records do
    resources :comments, only: [:create, :destroy]
  end
  resources :users, only: :show
end
