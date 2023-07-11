class ToolsController < ApplicationController
  def index
    @tools = Tool.where(available: true)
  end

  def show
    @tool = Tool.find(params[:id])
  end

  def destroy
    tool = Tool.find(params[:id])
    tool.destroy
    redirect_to "/tools"
  end
end