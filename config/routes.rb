Rails.application.routes.draw do
  root 'events#index'

  resources :events, only: [:index, :show, :new, :create, :update] do
    resources :flowers, only: [:new, :create]
  end
end
