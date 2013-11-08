class ItemsController < ApplicationController
  def index
    @item = Item.new
    @fridge = Fridge.find(params[:fridge_id])
  end

  def create
    new_item = Item.new(item_params)
    if new_item.save
      redirect_to :fridges
    else
      redirect_to :fridges
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def destroy
    Item.find(params[:id]).destroy
    redirect_to :fridges
  end

  private
  def item_params
    params.require(:item).permit(:name, :category, :fridge_id)
  end
end