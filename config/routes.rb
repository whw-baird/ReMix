Rails.application.routes.draw do

  root "cocktails#index"

  resources :follows
  resources :barflies
  resources :cocktail_comments
  resources :cocktail_ingredients
  resources :cocktails
  resources :bars
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
