Rails.application.routes.draw do
  get 'books/new'
  post 'books' => 'books#create'
  get '/' => 'homes#top'
  get 'books' => 'books#index'
  get 'books/:id' => 'books#show', as: 'show'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' =>'books#destroy', as: 'destroy_book'
  resources :books

end


