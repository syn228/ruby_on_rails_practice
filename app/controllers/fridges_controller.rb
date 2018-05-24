class FridgesController < ApplicationController
  before_action :get_fridge, only: [:show, :edit, :destroy, :update]
  before_action :get_all_users, only: [:new, :edit]

  def new
    @fridge = Fridge.new()
  end

  def show

  end

  def index
    @fridges = Fridge.all
  end

  def create
    @fridge = Fridge.create(fridge_params)
    if @fridge.valid?
      redirect_to @fridge
    else
      flash[:errors] = @fridge.errors.full_messages
      redirect_to new_fridge_path(@fridge)
    end
  end

  def edit

  end

  def update
    @fridge.update(fridge_params)
    redirect_to @fridge
  end

  def destroy
    @fridge.destroy
    redirect_to fridges_path
  end

  private

  def fridge_params
    params.require(:fridge).permit(:name, :size, user_ids: [])

  end

  def get_fridge
    @fridge = Fridge.find(params[:id])
  end

  def get_all_users
    @users = User.all
  end


end
