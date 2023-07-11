class ShedsController < ApplicationController
  def index
    @shed = Shed.order(created_at: :desc)
  end

  def show
    @shed = Shed.find(params[:id])
  end

  def new
  end

  def create
    shed = Shed.create(shed_params)
    redirect_to '/sheds'
  end

  def edit
    @shed = Shed.find(params[:id])
  end

  def update
    shed = Shed.find(params[:id])
    shed.update(shed_params)
    redirect_to "/sheds/#{shed.id}"
  end

  private
  
  def shed_params
    params.permit(:name, :city, :color, :space_available)
  end  
end