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
  
  def edit
    @tools = Tool.find(params[:id])
  end
  
  def update
    tool = Tool.find(params[:id])
    tool.update(tool_params)
    redirect_to "/tools/#{tool.id}"
  end

  private

  def tool_params
    params.permit(:quantity, :tool_name, :description, :available)
  end
end