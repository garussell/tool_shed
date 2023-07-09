require 'rails_helper'

RSpec.describe "the tools show page" do
  # User Story 4, Child Show 
  describe "as a visitor" do
    describe "when I visit '/tools/:id" do
      it "shows the tool with that id and attributes" do
        shed = Shed.create!(name: "Large One", city: "Denver", color: "Azul", space_available: true)
        tool = shed.tools.create!(shed_id: 2, quantity: 4, tool_name: "Screwdriver", description: "Flat head", available: true)

        visit "/tools/#{tool.id}"

        expect(page).to have_content(tool.shed_id)
        expect(page).to have_content(tool.tool_name)
        expect(page).to have_content(tool.description)
        expect(page).to have_content(tool.available)
      end
    end
  end
end