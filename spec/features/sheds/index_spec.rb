require 'rails_helper'

RSpec.describe "the sheds index page" do
  # User Story 1, Parent Index 
  describe "each shed table" do
    describe "when visitor visits '/sheds" do

      it "displays the name of the sheds" do
        shed = Shed.create!(name: "Large One", city: "Denver", color: "Azul", space_available: true)
        
        visit "/sheds"

        expect(page).to have_content(shed.name)
      end
    end
  end
end