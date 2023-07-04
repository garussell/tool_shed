class ShedsController < ApplicationController
  def index
    @sheds = Shed.all
  end
end