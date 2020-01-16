class CoordinationsController < ApplicationController
  
  def index
    
  end

  def new
    @coordination = Coordination.new
    # @coordination.build_outer
    @outer = Outer.new
    @inner = Inner.new
    @bottom = Bottom.new
    @shoe = Shoe.new
    @hat = Hat.new
    @accessory = Accessory.new
    # @coordination.build.bottom
    # binding.pry
  end

  def create
    Coordination.create(coordinaition_params)
  end
  def show
    @coordinaitions = Coordination.all
  end

  private
  def coordinaition_params
    params.require(:coordination).permit(:season, :coordination, :inner_id, :bottom_id, :shoes_id, :hat_id, :accessory_id, outer_attributes:[:outer_id])
  end
end
