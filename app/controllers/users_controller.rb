class UsersController < ApplicationController
  # before_action :set_clothe
  def index
    @users = User.all
  end

  def new
    @user = User.new
    @users = User.all
  end

  def create
    @user = User.new
  end
  def show
    @users = User.find(params[:id])
    @favorites = Favorite.where("user_id = ?", @user)
  end

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end
  
  private

  def user_params
    params.require(:user).permit(:name, :email)
  end

  # def set_clothe
  #   @clothe = Clothe.find(params[:clothe_id])
  # end
end
