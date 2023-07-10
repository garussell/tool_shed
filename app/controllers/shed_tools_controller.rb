class ShedToolsController < ApplicationController
  def index
    @shed = Shed.find(params[:id])
    @tools = @shed.tools
  end

  def new
  end

  def create
    shed = Shed.find(params[:id])
    tool = shed.tools.create(tool_params)
    redirect_to "/sheds/#{shed.id}/tools"
  end

  private

  def tool_params
    params.permit(:quantity, :tool_name, :description, :available)
  end
end