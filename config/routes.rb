Rails.application.routes.draw do
  devise_for :users
  root to: "records#index"
  resources :records do
    resources :comments, only: [:create, :destroy]
    resources :favorites, only: [:create, :destroy]
    collection do
      get 'search'
    end
  end
  resources :users, only: :show do
    get :favorites, on: :collection
  end
end
