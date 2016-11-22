Rails.application.routes.draw do

  devise_for :users

  root to: 'site#index'

  resources :barbers, only: [:index, :create, :destroy, :update]

  # namespace :api do
  #   namespace :v1 do
  #     resources :barbers, only: [:index, :create, :destroy, :update]
  #   end
  # end
end
