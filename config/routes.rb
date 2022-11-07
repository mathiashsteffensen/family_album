Rails.application.routes.draw do
  root to: "users#new"

  resources :users
  resources :sessions
  resources :albums do
    resources :album_entries
  end
end
