require 'rails_helper'

RSpec.describe "the tools show page" do
  # User Story 4, Child Show 
  describe "as a visitor" do
    describe "when I visit '/tools/:id" do
      it "shows the tool with that id and attributes" do
        shed = Shed.create!(name: "Large One", city: "Denver", color: "Azul", space_available: true)
        tool = shed.tools.create!(shed_id: 2, quantity: 4, tool_name: "Screwdriver", description: "Flat head", available: true)

        visit "/tools/#{tool.id}"


      end
    end
  end
end