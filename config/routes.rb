Rails.application.routes.draw do
<<<<<<< HEAD
  get 'comments/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :posts, :comments
=======
  get 'users/create'

  get 'users/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :posts, :users
>>>>>>> origin
end
