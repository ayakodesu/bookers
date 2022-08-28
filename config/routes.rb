Rails.application.routes.draw do
  get 'books/new'
  post 'books' => 'books#create'
  root to: 'homes#top'
  get 'books' => 'books#index',as: 'index_book'
  get 'books/:id' => 'books#show', as: 'book'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' =>'books#destroy', as: 'destroy_book'
  resources :books

end


