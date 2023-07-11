require 'rails_helper'

RSpec.describe "destroy tool" do
  # User Story 20
  describe "when I visit '/tools/:id'" do
    it "has a link to delete the tool that will send DELETE request to '/tools/:id and redirect to the tools index" do
      shed = Shed.create!(name: "Large One", city: "Denver", color: "Azul", space_available: true)
      tool = shed.tools.create!(shed_id: 2, quantity: 4, tool_name: "Screwdriver", description: "Flat head", available: true)

      visit "/tools"
      click_link("Delete")

      expect(current_path).to eq("/tools")
      expect(page).to_not have_content("Screwdriver")
    end
  end
end