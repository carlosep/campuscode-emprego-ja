require 'rails_helper'

feature 'User signs out' do
  scenario 'successfully' do
    visit root_path
    click_on "Sign out"
    expect(page).to have_content("User Successfully signed out")
  end
end
