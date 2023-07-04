class ShedsController < ApplicationController
  def index
    @sheds = Shed.all
  end

  def show
    @sheds = Shed.find(params[:id])
  end
end