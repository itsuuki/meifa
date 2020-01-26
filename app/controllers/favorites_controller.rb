class FavoritesController < ApplicationController
  def new
    @favorite = Favorite.new
  end

  def create
    user=current_user
    coordination=Coordination.find(params[:coordination_id])
    if Favorite.create(user_id: user.id,coordination_id:coordination.id)
    redirect_to coordination
    else
      redirect_to root_url
    end

  end

  def destroy
    user=current_user
    coordination=Coordination.find(params[:coordination_id])
    if favorite=Favorite.find_by(user_id: user.id,coordination_id:coordination.id)
      favorite.delete
      redirect_to users_path(current_user)
    else
      redirect_to root_url
    end
  end

  private
  def favorite_params
    params.require(:favorite).permit(:coordination_id, :user_id)
  end
end
