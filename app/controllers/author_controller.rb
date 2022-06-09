class AuthorController < ApplicationController
    skip_before_action :verify_authenticity_token
    def addAuthor
        newAuthor = Author.create(params.permit(:name,:email,:about,:img_url))
        render json:newAuthor
    end
    def getPosts
        theAuthor = Author.find(params[:id])
        render json:theAuthor.posts
    end
end
