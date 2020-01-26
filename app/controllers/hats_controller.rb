class HatsController < ApplicationController
  def index
    @hats = Hat.all
  end
  def new 
    @hat = Hat.new
    @hats = Hat.all
    @hat.coordination.build
  end

  def create
    Hat.create(hat_params)
  end

  private
  def hat_params
    params.require(:hat).permit(:hat, :image, coordinations_attributes: [:hat_id])
  end
end
