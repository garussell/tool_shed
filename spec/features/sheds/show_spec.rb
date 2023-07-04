require 'rails_helper'

RSpec.describe "the sheds show page" do
  # User Story 2, Parent Show 
  # As a visitor
  # When I visit '/parents/:id'
  # Then I see the parent with that id including the parent's attributes
  # (data from each column that is on the parent table)

  it "displays attributes for each shed" do
    shed = Shed.create!(name: "Large One", city: "Denver", color: "Azul", space_available: true)
    shed_2 = Shed.create!(name: "Small One", city: "Boulder", color: "Green", space_available: false)
    visit "/sheds/#{shed.id}"

    expect(page).to have_content(shed.name)
    expect(page).to have_content(shed.city)
    expect(page).to have_content(shed.color)
    expect(page).to have_content(shed.space_available)

    expect(page).to_not have_content(shed_2.name)
    expect(page).to_not have_content(shed_2.city)
    expect(page).to_not have_content(shed_2.color)
    expect(page).to_not have_content(shed_2.space_available)
  end
end