Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  get '/author/posts/:id', to:"author#getPosts"
  get '/author/:id', to:"author#getAuthor"
  post '/author', to:"author#addAuthor"


  get '/post/:id', to: "post#getPost"
  put '/post/:id', to: "post#updatePost"
  post '/post', to: "post#addPost"
  delete '/post/:id', to: "post#deletePost"

end
