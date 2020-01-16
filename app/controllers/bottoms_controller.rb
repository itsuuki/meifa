class BottomsController < ApplicationController
  
  def new 
    @bottom = Bottom.new
  end

  def create
    Bottom.create(bottom_params)
  end
  def edit
    @bottom = Bottom.find(params[:id])
  end

  def update
    
  end

  private
  def bottom_params
    params.require(:bottom).permit(:bottom, :image)
  end
end
