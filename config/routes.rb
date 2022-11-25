Rails.application.routes.draw do
  # get 'lists/only:'
  # get 'lists/:index,'
  # get 'lists/:new,'
  # get 'lists/:create,'
  # get 'lists/:show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "lists#index"

  resources :lists, only: [:index, :new, :create, :show] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
end
