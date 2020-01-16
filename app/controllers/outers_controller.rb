class OutersController < ApplicationController

  def index
    @outers = Outer.all
  end
  def new 
    @outer = Outer.new
  end

  def create
    # binding.pry
    Outer.create(outer_params)
    # binding.pry

    # if @outer.save
    #   redirect_to root_path
    # else
    #   render :new
    # end
    
  end

  private
  def outer_params

    params.require(:outer).permit(:outer, :image)
  end
end
