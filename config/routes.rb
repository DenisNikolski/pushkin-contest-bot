Rails.application.routes.draw do
  get 'main/index'

  resources :article
  resources :quiz, only: [:index]
  post 'quiz', to: 'quiz#index'

  root 'main#index'
end
