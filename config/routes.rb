Rails.application.routes.draw do
  devise_for :users
  
  resources :movies
  
  defaults format: :json do
    get '/ratings', to: 'ratings#index'
  end

  root to: 'movies#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
