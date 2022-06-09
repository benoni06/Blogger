Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post '/author', to:"author#addAuthor"
  get '/author/posts/:id', to:"author#getPosts"
end
