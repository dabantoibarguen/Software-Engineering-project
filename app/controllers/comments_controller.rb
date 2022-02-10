class CommentsController < ApplicationController
    before_action :user_logged_in?, only: %i[new create]
    def create 
      id = params[:id]
      @comment = Comment.new(comment_params)
        
      @comment.user_id = current_user.id
      @comment.post = Post.find(id)
      respond_to do |format|
        if @comment.save
          format.html {redirect_to post_path, notice: "Comment added to #{@post.name}" }
          format.js
        else
          redirect_to(posts_path, alert: "Failed to add a comment") and return
        end
      end
    end
    
    private
    def comment_params
        params.require(:comment)
            .permit(:comment)
    end

    def user_logged_in?
      return true if user_signed_in?

      flash[:alert] = 'You need to sign in to create a comment'
      redirect_to new_user_session_path and return
    end
end