class AccessoriesController < ApplicationController

  def new 
    @accessory = Accessory.new
  end

  def create
    Accessory.create(accessory_params)
  end

  private
  def accessory_params
    params.require(:accessory).permit(:accessory, :image)
  end
end
