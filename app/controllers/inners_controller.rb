class InnersController < ApplicationController

  def new 
    @inner = Inner.new
  end

  def create
    Inner.create(inner_params)
  end

  private
  def inner_params
    params.require(:inner).permit(:inner, :image)
  end
end
