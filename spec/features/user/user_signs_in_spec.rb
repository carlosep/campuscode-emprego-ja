require 'rails_helper'

feature 'User signs in' do
  scenario 'successfully' do
    visit root_path
    click_on "Sign in"
    sign_in
    expect(page).to have_content("Signed in successfully.")
  end

  scenario 'with blank fields' do
    visit root_path
    click_on "Sign in"
    within('.actions') do
      click_on "Log in"
    end
    expect(page).to have_content("Invalid email or password.")
  end
end
