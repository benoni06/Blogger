class PostController < ApplicationController
    skip_before_action :verify_authenticity_token
    def updatePost
        Post.find(params[:id]).update(params.permit(:title, :content, :img_url,:author_id))
        render html: "Updated", status: :ok
    end
    def deletePost
        Post.find(params[:id]).destroy!
        render html: "Deleted", status: :no_content
    end
    
    def addPost
        newPost = Post.create(params.permit(:title, :content, :img_url,:author_id))
        render json: newPost
    end
    
    def getPost
        thePost = Post.find(params[:id])
        render json: thePost
    end
end
