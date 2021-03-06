Rails.application.routes.draw do


  get 'results/index'
  resources :votes
  resources :countries, only: [:index, :new, :create, :show ]
  resources :cities, only: [:index, :new, :create, :show ] do
    post 'fetch_name', to: 'cities#fetch_name', as: 'fetch_name'
  end

  root to: 'pages#home'
  resources :tags, only: [:create ]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
