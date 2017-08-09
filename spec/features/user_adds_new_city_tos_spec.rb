require 'rails_helper'

RSpec.feature "User Adds New City To Profile", type: :feature do
  let(:city) do
    City.create(
    name: "Miami"
    )
    fill_in 'Name', with: city.name
    expect(page).to have_button('Create City')
    click_button 'Create City'
    visit city
  end
end
