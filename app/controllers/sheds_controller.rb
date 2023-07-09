class ShedsController < ApplicationController
  def index
    # @sheds = Shed.all
    @sheds = Shed.order_by_most_recent
  end

  def show
    @sheds = Shed.find(params[:id])
  end

  def new
  end

  def create
    shed = Shed.create(shed_params)
    redirect_to '/sheds'
  end

  private
  
  def shed_params
    params.require(:shed).permit(:name, :city, :color, :space_available)
  end  
end