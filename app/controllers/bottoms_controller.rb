class BottomsController < ApplicationController
  def index
    @bottoms = Bottom.all
  end
  def new 
    @bottom = Bottom.new
    @bottoms = Bottom.all
    @bottom.coordination.build
  end

  def create
    Bottom.create(bottom_params)
    respond_to do |format|
      format.html
      format.json
    end
  end
  def edit
    @bottom = Bottom.find(params[:id])
  end

  def update
    
  end
  def destroy
    @bottom = Bottom.find(params[:id])
    if @bottom.destroy
      redirect_to root_path
    end
  end

  private
  def bottom_params
    params.require(:bottom).permit(:bottom, :image, coordinations_attributes: [:bottom_id]).merge(user_id: current_user.id)
  end
end
