require 'rails_helper'

# User Story 14
RSpec.describe "update tool" do
  describe "as a visitor" do
    describe "when I visit tools show page" do
      it "links to '/tools/:id/edit" do
        shed = Shed.create!(name: "Large One", city: "Denver", color: "Azul", space_available: true)
        wrench = shed.tools.create!(shed_id: 2, quantity: 4, tool_name: "Wrench", description: "Crescent wrench", available: true)
        
        visit "/sheds/#{shed.id}/tools"
        click_link("Update Tool")

        expect(current_path).to eq("/tools/#{wrench.id}/edit")
      end

      it "has 'PATCH' request that redirects back to '/tools/:id' where I can see updated info" do
        shed = Shed.create!(name: "Large One", city: "Denver", color: "Azul", space_available: true)
        wrench = shed.tools.create!(quantity: 4, tool_name: "Wrench", description: "Crescent wrench", available: true)
      
        visit "/tools/#{wrench.id}/edit"
      
        fill_in('quantity', with: 2)
        fill_in('tool_name', with: 'Basket')
        fill_in('description', with: 'To hold things')
        check('available')
        click_button('Update Tool')

        expect(current_path).to eq("/tools/#{wrench.id}")
        expect(page).to have_content('Basket')
      end
    end
  end
end