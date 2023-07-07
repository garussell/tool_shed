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
    shed = Shed.new({
      name: params[:shed][:name],
      city: params[:shed][:city],
      color: params[:shed][:color],
      space_available: params[:shed][:space_available]
      })
    shed.save
    redirect_to '/sheds'
  end
end