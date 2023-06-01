class HousesController < ApplicationController
  def index
    @houses = policy_scope(House)
  end

  def show
    @house = House.find(params[:id])
    authorize @house
  end

  def new
    @house = House.new
    authorize @house
  end

  def create
    @house = House.new(house_params)
    @house.user_id = current_user.id

    if @house.save
      redirect_to house_path(@house)
    else
      render :new
    end
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
    redirect_to profil_path, status: :see_other
  end

  private

  def house_params
    params.require(:house).permit(:name, :address, :description, :price, :rating, :superficy, :photo)
  end
end
