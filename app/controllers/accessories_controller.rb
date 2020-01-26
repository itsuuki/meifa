class AccessoriesController < ApplicationController
  def index
    @accessories = Accessory.all
  end
  def new 
    @accessory = Accessory.new
    @accessories = Accessory.all
    @accessory.coordination.build
  end

  def create
    Accessory.create(accessory_params)
  end

  private
  def accessory_params
    params.require(:accessory).permit(:accessory, :image, coordinations_attributes: [:accessory_id])
  end
end
