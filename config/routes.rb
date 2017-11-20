Rails.application.routes.draw do
  root 'events#index'

  resource :events, only: [:index, :show, :new, :create] do
    resource :flowers, only: [:new, :create]
  end
end
