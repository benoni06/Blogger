class PostController < ApplicationController
    skip_before_action :verify_authenticity_token
    def updatePost
        Post.find(params[:id]).update(params.permit(:title, :content, :img_url,:author_id))
        render html: "Updated", status: :ok
    end
    def deletePost
        Post.find(params[:id]).destroy()
        render html: "Deleted", status: :no_content
    end
    
    def addPost
        authorId = Author.find_by(name:params[:author_name])
        newPost = Post.create(title:params[:title], content:params[:content], img_url:params[:img_url], author:authorId)
        render json: newPost
    end
    
    def getPost
        if params[:id]=="all"
            posts = Post.all
            p = []
            for i in posts do
                u = i.attributes
                u["author"] = Author.find(i.author_id)
                p.push(u)
            end
            
            render json:p  
            return
        end
            
        i = Post.find(params[:id])
        u = i.attributes
        u["author"] = Author.find(i.author_id)
        render json:u
    end
    def getPostAuthor
        thePost = Post.find(params[:id])
        render json: thePost.author
    end
    def search
         render json: Post.where("Title like ?", "%#{params[:title]}%")
    end
end
