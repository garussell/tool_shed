class ToolsController < ApplicationController
  def index
    @tools = Tool.where(available: true)
  end

  def show
    @tool = Tool.find(params[:id])
  end
end