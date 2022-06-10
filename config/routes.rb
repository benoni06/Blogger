Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  get '/author/posts/:id', to:"author#getPosts"
  get '/author/:id', to:"author#getAuthor"
  post '/author', to:"author#addAuthor"
  put '/author/:id', to:"author#updateAuthor"
  delete '/author/:id', to:"author#deleteAuthor"

  get '/post/author/:id', to:"post#getPostAuthor"
  get '/post/:id', to: "post#getPost"
  get '/post/search/:title', to: "post#search"
  put '/post/:id', to: "post#updatePost"
  post '/post', to: "post#addPost"
  delete '/post/:id', to: "post#deletePost"

end
