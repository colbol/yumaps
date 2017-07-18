Rails.application.routes.draw do
  get 'results/index'

  resources :countries, only: [:index, :new, :create, :show ]
  resources :cities, only: [:index, :new, :create, :show ]
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
