class CoordinationsController < ApplicationController
  def index
    @coordinationss = current_user.coordinations.search(params[:search])
    @coordinations = Coordination.all
    @coordination = Coordination.new
    # @coordinationsss = Coordination.where(user_id: current_user.id)
    @outers = Outer.where(user_id: current_user.id)
    @inners = Inner.where(user_id: current_user.id)
    @bottoms = Bottom.where(user_id: current_user.id)
    @shoes = Shoe.where(user_id: current_user.id)
    @hats = Hat.where(user_id: current_user.id)
    @accessories = Accessory.where(user_id: current_user.id)
  end

  def new
    @coordination = Coordination.new
    @outer = Outer.new
    @inner = Inner.new
    @bottom = Bottom.new
    @shoe = Shoe.new
    @hat = Hat.new
    @accessory = Accessory.new
  end

  def create
    if params[:coordination].has_key?(:coordinations) == false
      @coordination = Coordination.new(a_params)
        if @coordination.save!
          redirect_to root_path
        else
          render action: :new
        end
    else
      @coordinations = Coordination.new(coordination_params)
        if @coordinations.save!
          redirect_to root_path
        else
          puts "no"
        end
    end
  end

  def show
    @coordinations = Coordination.all
    @coordination = Coordination.find(params[:id])    
    if @coordination.outer_id != nil
      @outer = Outer.find(@coordination.outer_id)
    else
      @outer = Outer.none
    end
    if @coordination.inner_id != nil
      @inner = Inner.find(@coordination.inner_id)
    else
      @inner = Inner.none
    end
    if @coordination.bottom_id != nil
      @bottom = Bottom.find(@coordination.bottom_id)
    else
      @bottom = Bottom.none
    end
    if @coordination.shoes_id != nil
      @shoes = Shoe.find(@coordination.shoes_id)
    else
      @shoes = Shoe.none
    end
    if @coordination.hat_id != nil
      @hat = Hat.find(@coordination.hat_id)
    else
      @hat = Hat.none
    end
    if @coordination.accessory_id != nil
      @accessory = Accessory.find(@coordination.accessory_id)
    else
      @accessory = Accessory.none
    end
  end
  def edit
    @coordination = Coordination.find(params[:id])
    @coordinations = Coordination.where(user_id: current_user.id)
    @outers = Outer.where(user_id: current_user.id)
    @inners = Inner.where(user_id: current_user.id)
    @bottoms = Bottom.where(user_id: current_user.id)
    @shoes = Shoe.where(user_id: current_user.id)
    @hats = Hat.where(user_id: current_user.id)
    @accessories = Accessory.where(user_id: current_user.id)
  end

  def update
    @coordination = Coordination.find(params[:id])
    if @coordination.update(coordination_params)
      redirect_to root_path
    end
  end
  def destroy
    @coordination = Coordination.find(params[:id])
    if @coordination.destroy
      redirect_to root_path
    end
    
  end

  def search
  end
  private
  def a_params
    params.require(:coordination).permit(:coordination).merge(user_id: current_user.id)
  end
  def coordination_params
    params.require(:coordination).permit(:coordination).merge(user_id: current_user.id, outer_id: params[:coordination][:coordinations][:outer_id], inner_id: params[:coordination][:coordinations][:inner_id], bottom_id: params[:coordination][:coordinations][:bottom_id], shoes_id: params[:coordination][:coordinations][:shoes_id], hat_id: params[:coordination][:coordinations][:hat_id], accessory_id: params[:coordination][:coordinations][:accessory_id])
  end
end