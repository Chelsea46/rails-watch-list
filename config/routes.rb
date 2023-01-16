Rails.application.routes.draw do
  root to: "lists#index"

  resources :lists, only: [:index, :new, :create, :show] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :lists, only: [:destroy]
  resources :bookmarks, only: [:destroy]
end
