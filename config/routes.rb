Rails.application.routes.draw do
  resources :movies do
    resources :reviews, except: [:show,:index]
  end

  match 'search', to: 'movies#search', via: :get

  root "movies#index"

  devise_for :users

end
