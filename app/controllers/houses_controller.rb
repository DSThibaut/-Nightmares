class HousesController < ApplicationController
  def index
    @houses = House.all
  end

  def show
    @houses = House.find(params[:id])
  end

  def new
    @house = House.new
  end

  def create
    @house = House.new(house)
    @house.save

    redirect_to house_path(@house)
  end

  def edit
    @house = House.find(params[:id])
  end

  def update
    @house = House.find(params[:id])
    @house.update(house_params)

    redirect_to house_path(@house)
  end

  def destroy
    @house = House.find(params[:id])
    @house.destroy

    redirect_to houses_path, status: :see_other
  end

  private

  def house_params
    params.require(:house).permit(:name, :address, :description, :price, :rating, :superficy, :photo_url)
  end
end
