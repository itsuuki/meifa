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
    respond_to do |format|
      format.html
      format.json
    end
  end

  def destroy
    @accessory = Accessory.find(params[:id])
    if @accessory.destroy
      redirect_to root_path
    end
  end

  private
  def accessory_params
    params.require(:accessory).permit(:accessory, :image, coordinations_attributes: [:accessory_id]).merge(user_id: current_user.id)
  end
end
