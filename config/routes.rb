Rails.application.routes.draw do
  get 'books/new'
  post 'books' => 'books#create'
  get '/' => 'homes#top'
  get 'books' => 'lists#index'
  get 'books/:id' => 'lists#show'
  get 'books/:id/edit' => 'lists#edit', as: 'edit_book'
  delete 'books/:id' =>'books#destroy'
  resources :books

end


