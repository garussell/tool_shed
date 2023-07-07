require 'rails_helper'

RSpec.describe "the shed_tools page" do
  # User Story 5, Parent Children Index 
  describe "as a visitor" do
    describe "when I visit '/sheds/:id/tools" do
      it "can see each tool that is associated with the shed and each tools attributes" do
        shed = Shed.create!(name: "Large One", city: "Denver", color: "Azul", space_available: true)
        wrench = shed.tools.create!(shed_id: 2, quantity: 4, tool_name: "Wrench", description: "Crescent wrench", available: true)

        visit "/sheds/#{shed.id}/tools"

        expect(page).to have_content(wrench.tool_name)
        expect(page).to have_content(wrench.description)
        expect(page).to have_content(wrench.available)
      end
    end
  end
end