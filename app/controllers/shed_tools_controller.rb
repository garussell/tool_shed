class ShedToolsController < ApplicationController
  def index
    @shed = Shed.find(params[:id])
    @tools = @shed.tools
  end
end