Rails.application.routes.draw do
<<<<<<< HEAD

  get 'results/index'
=======
>>>>>>> b11386ae22acbb34d0aa92a8da8b554ab23201fc

  get 'results/index'
  resources :votes
  resources :countries, only: [:index, :new, :create, :show ]
  resources :cities, only: [:index, :new, :create, :show ]
<<<<<<< HEAD
=======

>>>>>>> b11386ae22acbb34d0aa92a8da8b554ab23201fc
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
