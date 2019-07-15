class FamiliesController < ApplicationController

  def index
    @families = Family.all
  end

  def create
    @family = Family.new(family_params)
    if @family.save
      render json: @family, status: :created
    else
      render json: @family.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    this_family
  end

  def update
    this_village
    if @family.update(village_params)
      render json: @family
    else
      render json: @family.errors.full_messages, status: :unprocessable_entity
    end
  end

  def delete
    this_family.destroy
  end

  private

  def family_params
    params.require(:family).permit(:name, :img_url)
  end

  def this_family
    @family = Family.find(params[:id])
  end

end
