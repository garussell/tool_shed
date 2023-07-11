require 'rails_helper'

# User Story 11
RSpec.describe 'create sheds' do
  it 'links to the new page from the sheds index' do
    visit '/sheds'

    click_link('New Shed')
    expect(current_path).to eq('/sheds/new')
  end

  it 'can create a new shed' do
    visit '/sheds/new'

    fill_in('name', with: 'Boondock')
    fill_in('city', with: 'Berthoud')
    fill_in('color', with: 'Brown')
    click_button('Create Shed')

    expect(current_path).to eq("/sheds")
    expect(page).to have_content("Boondock")
  end
end