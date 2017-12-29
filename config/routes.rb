Rails.application.routes.draw do
  get 'main/index'

  resources :article
  resources :quiz

  root 'main#index'
end
