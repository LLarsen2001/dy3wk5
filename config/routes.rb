Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
 
  # root "articles#index"
  namespace :api do
    resources :authors do
      resources :books
    end
    get '/books', to: 'books#all_books'
    get '/books/:book_id_please', to: 'books#find_book'
  end
end
