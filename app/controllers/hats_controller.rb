class HatsController < ApplicationController

  def new 
    @hat = Hat.new
  end

  def create
    Hat.create(hat_params)
  end

  private
  def hat_params
    params.require(:hat).permit(:hat, :image)
  end
end
