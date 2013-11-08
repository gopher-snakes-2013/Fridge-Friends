class FridgesController < ApplicationController

  def index
    @fridge = Fridge.new
  end

  def create
    fridge = Fridge.new(fridge_params)
    if fridge.save
      redirect_to :fridges
    else
      redirect_to :fridges
    end
  end

  def show
    @fridge = Fridge.find(params[:id])
    @items = @fridge.items.all
  end

  def destroy
    Fridge.find(params[:id]).destroy
    redirect_to :fridges
  end

  private
  def fridge_params
    params.require(:fridge).permit(:name)
  end
end