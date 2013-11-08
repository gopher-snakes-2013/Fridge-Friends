FridgeFriends::Application.routes.draw do
  root 'clearance/sessions#new'

  resources :fridges, only: [:index, :create, :show, :destroy] do
    resources :items, only: [:index, :create, :show, :destroy]
  end
end
