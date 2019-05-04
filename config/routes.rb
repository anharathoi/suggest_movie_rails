Rails.application.routes.draw do
  root to: 'movies#index'
  devise_for :users
  
  resources :movies

  resources :ratings  
  
  # defaults format: :json do
  #   resources :ratings
  # end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
