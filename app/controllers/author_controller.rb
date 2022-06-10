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
    def getAuthor
        if params[:id]=="all"
            render json:Author.all
            return
        end
        render json:Author.find(params[:id])
    end
    def deleteAuthor
        Author.find(params[:id]).destroy()
        render html:"Deleted"
    end
    def updateAuthor
        Author.find(params[:id]).update(params.permit(:name, :email, :img_url,:about))
        render html:"Updated"
    end

end
