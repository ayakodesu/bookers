Rails.application.routes.draw do
  get 'books/new'
  post 'books' => 'books#create'
  get '/' =>'homes#top'
  get 'books' => 'lists#index'
  get 'books/:id' => 'lists#show'
  get 'books/:id/edit' => 'lists#edit'
  resources :books
end


