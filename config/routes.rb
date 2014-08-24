Rails.application.routes.draw do

  root 'welcome#home'

  devise_for :users

  resources :todos do
    user do
      put :complete
    end
  end

end
