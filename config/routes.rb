Rails.application.routes.draw do
  root to: 'tweets#index'

  resources :tweets, only: %i[show index]
end
