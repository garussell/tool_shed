require 'rails_helper'

RSpec.describe "the sheds show page" do
  # User Story 2, Parent Show 
  describe "as a visistor" do
    describe "when I visit '/sheds/:id'" do
      it "displays id and attributes for each shed" do
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
  end
end