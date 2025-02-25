class FoodTrucksController < ApplicationController
  before_action :set_food_truck, only: [:show, :edit, :update, :destroy]

  def index
    @food_trucks = FoodTruck.all
  end

  def show
  end

  def new
    @food_truck = FoodTruck.new
  end

  def create
    @food_truck = FoodTruck.new(food_truck_params)
    if @food_truck.save
      redirect_to food_trucks_path, notice: "Food truck créé avec succès."
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @food_truck.update(food_truck_params)
      redirect_to @food_truck, notice: "Food truck mis à jour avec succès."
    else
      render :edit
    end
  end

  def destroy
    @food_truck.destroy
    redirect_to food_trucks_url, notice: "Food truck supprimé avec succès."
  end

  private

  def set_food_truck
    @food_truck = FoodTruck.find(params[:id])
  end

  def food_truck_params
    params.require(:food_truck).permit(:name, :cuisine_type, :description, :address, :user_id)
  end
end