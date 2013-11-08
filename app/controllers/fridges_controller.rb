class FridgesController < ApplicationController

  def index
  end

  def create
    fridge = Fridge.new(fridge_params)
    if fridge.save
      redirect_to :fridges
    else
      redirect_to :fridges
    end
  end

  private
  def fridge_params
    params.require(:fridge).permit(:name)
  end
end