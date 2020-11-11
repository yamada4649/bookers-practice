Rails.application.routes.draw do
  
  resources :books
  root 'books#top'
  
  # get '/' => 'books#top'
  # get 'books' => 'books#index'
  # get 'books/:id' => 'books#show'
  # post 'books' => 'books#create'
  # get 'books/:id/edit' => 'books#edit'
  # patch 'books/:id/update' => 'books#update'
  # delete 'books/:id/delete' => 'books#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
