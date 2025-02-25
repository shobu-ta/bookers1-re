Rails.application.routes.draw do
  
  post 'books' =>'books#create'
  get 'books' => 'books#index'
  get 'books/show'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  root 'homes#top'
  get '/books', to: 'books#index'
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
