class FoodsController < ApplicationController
  before_action :get_food, only: [:show, :edit, :destroy, :update]
  before_action :get_all_fridges, only: [:new, :edit]

  def new
    # byebug
    @fridges=User.find(params["user"]["id"]).fridges
    @food = Food.new()
    # @users = User.all
  end
  def newf
    @users = User.all
  end

  def root

  end

  def show

  end

  def index
    @foods = Food.all
    if params[:search]
      @foods = Food.search(params[:search]).order("created_at DESC")
    else
      @foods = Food.all.order("created_at DESC")
    end
  end

  def create
    @food = Food.create(food_params)
    if @food.valid?
      redirect_to @food
    else
      flash[:errors] = @food.errors.full_messages
      redirect_to new_food_path(@food)
    end
  end

  def edit

  end

  def update
    @food.update(food_params)
    redirect_to @food
  end

  def destroy
    @food.destroy
    redirect_to foods_path
  end



  private

  def food_params
    params.require(:food).permit(:name, :expires_on, :fridge_id, :user_ids)

  end

  def get_food
    @food = Food.find(params[:id])
  end

  def get_all_fridges
    @fridges = Fridge.all
  end
end
