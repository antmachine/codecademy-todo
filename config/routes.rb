Rails.application.routes.draw do

  root 'welcome#home'

  devise_for :users

  resources :todos do
    resources :users do
      put :completed
    end
  end



end
