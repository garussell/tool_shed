require 'rails_helper'

RSpec.describe "the sheds index page" do
  # User Story 1, Parent Index 
  # For each parent table
  # As a visitor
  # When I visit '/parents'
  # Then I see the name of each parent record in the system

  it "displays the name of the sheds" do
    shed = Shed.create!(name: "Large One", city: "Denver", color: "Azul", space_available: true)
    
    visit "/sheds"

    expect(page).to have_content(shed.name)
  end
end