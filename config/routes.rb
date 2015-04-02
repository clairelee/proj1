Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers

  patch '/pokemons/capture', to: 'pokemons#capture', as: 'capture'
  patch '/pokemons/damage', to: 'pokemons#damage', as: 'damage'
  post '/pokemons/', to: 'pokemons#create'
  get '/pokemons/new', to: 'pokemons#new', as: 'create'
  # patch '/heal', to: 'pokemon#heal', as: 'heal'
end
