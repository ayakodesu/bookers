Rails.application.routes.draw do
  get 'books/new'
  post 'books' => 'books#create'
  get '/' => 'homes#top'
  get 'books' => 'lists#index'
  get 'books/:id' => 'lists#show', as: 'show_book'
  get 'books/:id/edit' => 'lists#edit', as: 'edit_book'
  patch 'books/:id' => 'books#update'
  delete 'books/:id' =>'lists#destroy', as: 'destroy_book'
  resources :books

end


