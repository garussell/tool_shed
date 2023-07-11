require 'rails_helper'

RSpec.describe "the shed_tools page" do
  before(:each) do
    @machine_shop = Shed.create!(name: "The Machine Shop", city: "Aurora", color: "Red", space_available: true)

    #Machine Tools
  # Machine Tools
    @table_saw = @machine_shop.tools.create!(shed_id: 2, quantity: 1, tool_name: "Table Saw", description: "A tool used to make straight cuts accross the board length or width", available: true)
    @bandsaw = @machine_shop.tools.create!(shed_id: 2, quantity: 1, tool_name: "Band Saw", description: "A tool to process raw materials or make curved cuts", available: true)
    @grinder = @machine_shop.tools.create!(shed_id: 2, quantity: 2, tool_name: "The Grinder", description: "A tool used sharpen and/or reshapen tools", available: true)
  end
  
  # User Story 5, Parent Children Index 
  describe "as a visitor" do
    describe "when I visit '/sheds/:id/tools" do
      it "can see each tool that is associated with the shed and each tools attributes" do

        visit "/sheds/#{@machine_shop.id}/tools"

        expect(page).to have_content(@table_saw.tool_name)
        expect(page).to have_content(@bandsaw.description)
        expect(page).to have_content(@grinder.available)
      end
    end

    # User Story 16
    describe "when I visit '/sheds/:id/tools" do
      it "has a link to sort tool alphabatically" do

        visit "/sheds/#{@machine_shop.id}/tools"

        expect(page).to have_content(@table_saw.tool_name)
        expect(page).to have_content(@bandsaw.tool_name)

        click_link("Sort Alphabetically")

        expect(page).to have_content(@bandsaw.tool_name)
        expect(page).to have_content(@table_saw.tool_name)
        expect(@bandsaw.tool_name).to appear_before(@table_saw.tool_name)
      end
    end
  end
end