Rails.application.routes.draw do
  get 'books/new'
  get '/' =>'homes#top'
  post 'books' => 'lists#create'
  get 'books' => 'lists#index'
  get 'books/:id' =>'lists#show'
  get 'books/:id' =>'lists#edit'
  resources :books
end


