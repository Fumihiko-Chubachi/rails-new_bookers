Rails.application.routes.draw do
  get '/top' => 'homes#top'
  
  get '/index' => 'books#index'
  post 'new' => 'books#create'
  get 'show/:id' => "books#show", as: 'book'
  
  get 'books/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
