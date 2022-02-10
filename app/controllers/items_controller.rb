class ItemsController < ApplicationController
    def index
        order = params[:order] || 'name'
        @items = Item.all
    end

    def show
        id = params[:id]
        @item = Item.find(id)
        @review = Review.new
    end
    
    def new
        @item = Item.new
    end
    
    def create
        @item = Item.new(item_params)
        respond_to do |format|
            if @item.save
                format.html { redirect_to items_path, notice: "New item #{@item.name} created" }
                format.js
            else
                redirect_to(new_item_path, alert: "Failed to save new item") and return
            end
        end
    end
      
    
    def destroy
        id = params[:id]
        @item = Item.find(id)
        if @item.destroy
            flash[:notice] = "Successfully deleted #{@item.name}"
            redirect_to items_path and return
        else
            flash[:alert] = "Failed to delete #{@item.name}"
            redirect_to items_path
        end
    end

    private

    def record_not_found
        flash[:alert] = 'No such food item'
        redirect_to items_path and return
    end

    def item_params
        params.require(:item)
            .permit(:name, :description, :calories, :diet)
    end
end
