require 'rails_helper'

# User Story 19
RSpec.describe "destroying a shed" do 
  it "can delete the shed from the shed show page" do
    wood_shop = Shed.create!(name: "Woodworking Shop", city: "Denver", color: "Yellow", space_available: true)

    visit "/sheds/#{wood_shop.id}"
    click_button("Delete Woodworking Shop")

    expect(current_path).to eq("/sheds")
    expect(page).to_not have_content("Woodworking Shop")
  end
end