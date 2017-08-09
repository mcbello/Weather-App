require 'rails_helper'

RSpec.feature "A User Views Their Profiles", type: :feature do
  let!(:user) do
    User.create(
    username: "machine@example.com",
    password: 'testing'
    )

  end
  it "takes user to login page after signing up" do
    visit root_path(user)
    fill_in 'Username', with: 'machine@example.com'
    fill_in 'Password', with: 'testing'
    expect(page).to have_button('Log in')
    expect(page).to have_link('sign up')
    click_button 'Log in'
    visit dashboard_index_path

  end
end
