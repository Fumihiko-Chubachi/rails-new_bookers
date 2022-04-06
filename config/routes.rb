Rails.application.routes.draw do
  get '/top' => 'homes#top'
  
  get '/index' => 'books#index'
  post 'new' => 'books#create'
  get 'show/:id' => "books#show", as: 'book'
  get 'book/:id/edit' => 'books#edit', as: 'edit_book'
  patch 'book/:id' => 'books#update', as: 'update_book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
