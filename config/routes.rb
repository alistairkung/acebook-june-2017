Rails.application.routes.draw do
  get 'users/create'

  get 'users/show'

  get 'comments/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :posts, :users, :comments
end
