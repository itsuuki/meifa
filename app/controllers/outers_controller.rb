class OutersController < ApplicationController
  def index
    @outers = Outer.all
    # binding.pry
  end
  def new 
    @outer = Outer.new
    @outers = Outer.all
    @outer.coordination.build
    # @outerss = @coordination.outers
  end

  def create
    Outer.create!(outer_params)
    # binding.pry

    # if @outer.save
    #   redirect_to root_path
    # else
    #   render :new
    # end
    
  end

  def edit
    # binding.pry
    @outers = Outer.find(params[:id])
  end
  def update
    
    @outers = Outer.find(params[:id])
  end
  def destroy
    outer = Outer.find(params[:id])
    outer.destroy
  end



  private
  def outer_params
    # binding.pry
    params.require(:outer).permit(:outer, coordinations_attributes: [:outer_id])
  end
end

# coordination_attributes: [:id, :coordination, :season, :outer_id, :inner_id, :botton_id, :shoe_id, :hat_id, :accessory_id]

