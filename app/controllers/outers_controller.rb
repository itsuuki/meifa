class OutersController < ApplicationController
  def index
    @outers = Outer.all
    # @outers = Outer.where(user_id: current_user.id)
    # binding.pry
  end
  def new 
    @outer = Outer.new
    @outers = Outer.all
    @outer.coordination.build
    # @outerss = @coordination.outers
  end

  def create
    @coordinations = Coordination.pluck(:coordination)
    # binding.pry
    @outer = Outer.new(outer_params)
    if @outer.save
      respond_to do |format|
        format.json
        # binding.pry
      end
    redirect_to new_coordination_path
    # binding.pry
    end
   
    #   redirect_to root_path
    # else
    #   render :new
    
    
  end



  private
  def outer_params
    # binding.pry
    params.require(:outer).permit(:outer, coordinations_attributes: [:outer_id]).merge(user_id: current_user.id)
  end
end

# coordination_attributes: [:id, :coordination, :season, :outer_id, :inner_id, :botton_id, :shoe_id, :hat_id, :accessory_id]

