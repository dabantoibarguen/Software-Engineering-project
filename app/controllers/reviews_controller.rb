class ReviewsController < ApplicationController
    before_action :user_logged_in?, only: %i[new create]
    def create
      id = params[:id]
      @review = Review.new(review_params)
        
      @review.user_id = current_user.id
      @review.item = Item.find(id)
      respond_to do |format|
        if @review.save
          format.html {redirect_to item_path, notice: "Review added to #{@item.name}" }
          format.js
        else
          redirect_to(items_path, alert: "Failed to add review") and return
        end
      end
    end
    
    private
    def review_params
        params.require(:review)
            .permit(:stars, :review)
    end

    def user_logged_in?
      return true if user_signed_in?

      flash[:alert] = 'You need to sign in to create a review'
      redirect_to new_user_session_path and return
    end
end
