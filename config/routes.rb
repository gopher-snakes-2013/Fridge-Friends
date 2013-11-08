FridgeFriends::Application.routes.draw do

  resources :fridges, only: [:index, :create, :show, :destroy]

end
