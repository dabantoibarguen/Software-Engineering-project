Rails.application.routes.draw do
  post '/items/:id/reviews', to: 'reviews#create', as: :create_review
  get 'reviews/create'
  post '/posts/:id/comments', to: 'comments#create', as: :create_comment
  get 'comments/create'
  # devise_for :users # Uncomment when users are fixed
  resources :posts, only: [:index, :show, :new, :create, :destroy]
  resources :items, only: [:index, :show, :new, :create, :destroy]
  root 'posts#index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
