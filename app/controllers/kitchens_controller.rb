class KitchensController < ApplicationController

  def index
    if params[:search]
      @foods = Food.search(params[:search]).order("created_at DESC")
      @users = User.search(params[:search]).order("created_at DESC")
      @fridges = Fridge.search(params[:search]).order("created_at DESC")
    else
      @foods = Food.all.order("created_at DESC")
      @users = User.all.order("created_at DESC")
      @fridges = Fridge.all.order("created_at DESC")
    end



  end
end
