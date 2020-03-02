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
    respond_to do |format|
      format.html
      format.json
    end
  end

  def destroy
    @hat = Hat.find(params[:id])
    if @hat.destroy
      redirect_to root_path
    end
  end
  private
  def hat_params
    params.require(:hat).permit(:hat, :image, coordinations_attributes: [:hat_id]).merge(user_id: current_user.id)
  end
end
