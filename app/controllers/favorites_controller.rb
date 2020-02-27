class FavoritesController < ApplicationController
  def index
    user = current_user
    @coordination = Coordination.new
    @coordinations = Coordination.all
    @favorites = Favorite.includes(:coordination).all
    @favoritess = Favorite.where(user_id: current_user.id)
  end
  def new
  end

  def create
    user = current_user
    coordination = Coordination.find(params[:coordination_id])
    if Favorite.create(user_id: user.id, coordination_id: coordination.id)
    redirect_to coordination
    else
      redirect_to root_path
    end
  end
  private
  def favorite_params
    params.require(:favorite).permit(:coordination_id, :user_id)
  end
end
