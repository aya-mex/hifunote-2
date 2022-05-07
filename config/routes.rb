Rails.application.routes.draw do
  devise_for :users
  root_to: "records#index" 
  resources :records
end
