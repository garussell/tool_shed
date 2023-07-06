require 'rails_helper'

RSpec.describe "the tools index page" do
  # User Story 3, Child Index 
  # As a visitor
  # When I visit '/child_table_name'
  # Then I see each Child in the system including the Child's attributes
  # (data from each column that is on the child table)

  it "displays the tool's name and attributes" do
    shed = Shed.create!(name: "Large One", city: "Denver", color: "Azul", space_available: true)
    tool = shed.tools.create!(shed_id: 2, quantity: 4, tool_name: "Screwdriver", description: "Flat head", available: true)
  
    visit "/sheds/#{tool.shed_id}/tools"

    expect(page).to have_content(tool.shed_id)
    expect(page).to have_content(tool.tool_name)
  end
end