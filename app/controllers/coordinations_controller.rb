class CoordinationsController < ApplicationController
  def index
    @coordinationss = Coordination.search(params[:search])
    # @outers = Outer.all
    @coordinations = Coordination.all
    @coordination = Coordination.new
    @coordinationsss = Coordination.pluck(:coordination)
    @outers = Outer.all
    @inners = Inner.all
    @bottoms = Bottom.all
    @shoes = Shoe.all
    @hats = Hat.all
    @accessories = Accessory.all
  end

  def new
    @coordination = Coordination.new
    @outer = Outer.new
    @inner = Inner.new
    @bottom = Bottom.new
    @shoe = Shoe.new
    @hat = Hat.new
    @accessory = Accessory.new
    # @coordinations = Coordination.pluck(:coordination)
    # @outers = Outer.all
    # @inners = Inner.all
    # @bottoms = Bottom.all
    # @shoes = Shoe.all
    # @hats = Hat.all
    # @accessories = Accessory.all
  end

  def create
    # @outers = Outer.all
    @coordinations = Coordination.new(coordination_params)
    if @coordinations.save
      respond_to do |format|
        format.json
      end
      redirect_to root_path
    else
      puts "no"
    end
    # binding.pry
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

  def search
 
  end
  private
  def coordination_params
    params.require(:coordination).require(:coordinations).permit(:coordination, :outer_id, :inner_id, :bottom_id, :shoes_id, :hat_id, :accessory_id).merge(user_id: current_user.id)
  end
end