# README

#Models
author {id: PK, name: string, age: integer}
book {id: PK title:, genre:string, author_id:FK}


#
rails g model author name age:integer
rails g model book title:string genre:string author:belongs_to

rails g controller api/authors
rails g controller api/books

#Routes
```ruby
namespace :api do 
    resources :authors do
        resources :book
    end
end

what this will generate is our nested routes
get "/authors", to: 'authors@index

#controllers!!!!!!!!!!!!!!