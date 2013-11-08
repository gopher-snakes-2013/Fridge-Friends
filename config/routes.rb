FridgeFriends::Application.routes.draw do

  resources :fridges, only: [:index]

end
