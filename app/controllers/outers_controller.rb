class OutersController < ApplicationController
  def index
    @outers = Outer.all
  end
  def new 
    @outer = Outer.new
    @outers = Outer.all
    @outer.coordination.build
  end

  def create
    @coordinations = Coordination.pluck(:coordination)
    @outer = Outer.new(outer_params)
    if @outer.save
      respond_to do |format|
        format.json
    end
    redirect_to new_coordination_path
    end
  end
  def destroy
    @outer = Outer.find(params[:id])
    if @outer.destroy
      redirect_to root_path
    end
  end



  private
  def outer_params
    # binding.pry
    params.require(:outer).permit(:outer, coordinations_attributes: [:outer_id]).merge(user_id: current_user.id)
  end
end

# coordination_attributes: [:id, :coordination, :season, :outer_id, :inner_id, :botton_id, :shoe_id, :hat_id, :accessory_id]

