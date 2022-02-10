class PostsController < ApplicationController

    def index
        @posts = Post.all
    end

    def name
        @post.name
    end

    
    def description
        @post.description
    end

    def show
        id = params[:id]
        @post = Post.find(id)
        @comment = Comment.new
    end

    def new
        @post = Post.new
    end
    
    def create
        @post = Post.new(post_params)
        if user_signed_in?
            @post.user_id = current_user.id
        end
        respond_to do |format|
            if @post.save
                format.html { redirect_to posts_path, notice: "New post #{@post.name} created" }
                format.js
            else
                redirect_to(new_post_path, alert: "Failed to save new post") and return
            end
        end
    end
      
    
    def destroy
        id = params[:id]
        @post = Post.find(id)
        if @post.destroy
            flash[:notice] = "Successfully deleted #{@post.name}"
            redirect_to posts_path and return
        else
            flash[:alert] = "Failed to delete #{@post.name}"
            redirect_to posts_path
        end
    end

    private

    def record_not_found
        flash[:alert] = 'No such post'
        redirect_to posts_path and return
    end

    def post_params
        params.require(:post)
            .permit(:name, :description, :user_id)
    end
end
