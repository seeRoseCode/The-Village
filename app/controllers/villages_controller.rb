class VillagesController < ApplicationController
  def index
    @villages = Village.all
  end

  def create
    @village = Village.new(village_params)
    if village.save
      render json: @village, status: :created
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    this_village
  end

  def update
    this_village
    if @village.update(village_params)
      render json: @village
    else
      render json: @village.errors.full_messages, status: :unprocessable_entity
    end
  end

  def delete
    this_village.destroy
  end

  private

  def village_params
    params.require(:village).permit(:name)
  end


  def this_village
    @village = Village.find(params[:id])
  end

end
