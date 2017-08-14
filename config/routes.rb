Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create,:edit]
  put 'posts/:id', to: 'posts#update'
  # get 'posts/:id/edit', to: 'posts#edit', as: :edit_post
end
