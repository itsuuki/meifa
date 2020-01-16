class ShoesController < ApplicationController

  def new 
    @shoes = Shoes.new
  end

  def create
    Shoe.create(shoes_params)
  end

  private
  def shoes_params
    params.require(:shoe).permit(:shoes, :image)
  end
end
