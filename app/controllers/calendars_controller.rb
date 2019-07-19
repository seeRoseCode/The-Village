class CalendarsController < ApplicationController

  def index
  end

  def create
  end

  def show
  end

  def update
  end

  def delete
  end

  private

  def calendar_params
    params.require(:calendar).permit(:user_id)
  end

  def this_calendar
    @calendar = Calendar.find(params[:id])
  end

end
