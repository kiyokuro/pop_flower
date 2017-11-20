Rails.application.routes.draw do
  root 'events#index'

  resources :events, only: [:index, :show, :new, :create] do
    resources :flowers, only: [:new, :create, :edit, :update]
  end
end
