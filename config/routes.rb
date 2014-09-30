Rails.application.routes.draw do
  resources :videos, only: [:index, :new, :create, :show]
end
