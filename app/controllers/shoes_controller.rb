class ShoesController < ApplicationController
  def index
    @shoes = Shoe.all
  end
  def new 
    
    @shoe = Shoe.new
    @shoes = Shoe.all
    @shoe.coordination.build
  end

  def create
    Shoe.create(shoes_params)
    respond_to do |format|
      format.html
      format.json
    end
  end

  private
  def shoes_params
    params.require(:shoe).permit(:shoe, :image, coordinations_attributes: [:shoes_id]).merge(user_id: current_user.id)
  end
end
