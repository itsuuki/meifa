class InnersController < ApplicationController
  def index
    @inners = Inner.all
  end

  def new 
    @inner = Inner.new
    @inners = Inner.all
    @inner.coordination.build
  end

  def create
    Inner.create(inner_params)
    respond_to do |format|
      format.html
      format.json
    end
  end

  def destroy
    @inner = Inner.find(params[:id])
    if @inner.destroy
      redirect_to root_path
    end
  end

  private
  def inner_params
    params.require(:inner).permit(:inner, :image, coordinations_attributes: [:inner_id]).merge(user_id: current_user.id)
  end
end
