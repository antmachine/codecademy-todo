Rails.application.routes.draw do

  root 'welcome#home'

  devise_for :users

  put '/todos/:id', to: 'todos#completed', as: :completed

  resources :todos




end
