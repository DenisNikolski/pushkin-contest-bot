Rails.application.routes.draw do
  get 'main/index'

  resources :article
  resources :quiz, only: [:index]

  root 'main#index'
end
