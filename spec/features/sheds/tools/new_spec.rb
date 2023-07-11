require 'rails_helper'

# User Story 13
RSpec.describe "create a tool for the shed" do
  describe "as a visitor" do
    describe "when I visit '/sheds/:id/tools/new" do
      it "can see a form to add a new tool" do
        shed = Shed.create!(name: "Large One", city: "Denver", color: "Azul", space_available: true)
        wrench = shed.tools.create!(shed_id: 2, quantity: 4, tool_name: "Wrench", description: "Crescent wrench", available: true)
        
        visit "/sheds/#{shed.id}/tools"
        click_link("Add Tool")
      
        expect(current_path).to eq("/sheds/#{shed.id}/tools/new")
      end
      
      it "can add tool's attributes and click button 'Create Tool' and redirect 'POST' request to '/sheds/:id/tools" do
        shed = Shed.create!(name: "Large One", city: "Denver", color: "Azul", space_available: true)
        wrench = shed.tools.create!(shed_id: 2, quantity: 4, tool_name: "Wrench", description: "Crescent wrench", available: true)

        visit "/sheds/#{shed.id}/tools/new"
        click_button("Create Tool")

        expect(current_path).to eq("/sheds/#{shed.id}/tools")
      end
    end
  end
end