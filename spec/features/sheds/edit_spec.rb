require 'rails_helper'

# User Story 12
RSpec.describe 'the shed edit' do
  it 'links to /sheds/:id/edit' do
    wood_shop = Shed.create!(name: "Woodworking Shop", city: "Denver", color: "Yellow", space_available: true)

    visit '/sheds'

    click_button "Update #{wood_shop.name}"

    expect(current_path).to eq("/sheds/#{wood_shop.id}/edit")
  end

  it 'has a form to update the shed' do
    wood_shop = Shed.create!(name: "Wood Shoe", city: "Denver", color: "Yellow", space_available: true)

    visit "/sheds"

    expect(page).to have_content("Wood Shoe")

    click_button "Update Wood Shoe"

    fill_in('shed[name]', with: 'Woodworking Shop')
    fill_in('shed[city]', with: 'Berthoud')
    fill_in('shed[color]', with: 'Brown')
    check('shed[space_available]')
    click_button('Update Shed')

    expect(current_path).to eq("/sheds")
    expect(page).to have_content("Woodworking Shop")
  end
end