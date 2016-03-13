require 'rails_helper'

feature 'User views sign out link' do
  scenario 'successfully' do
    visit root_path
    click_on 'Sign In'
    sign_in
    expect(page).to have_content('Sign Out')
  end
  scenario 'unsuccessfully' do
    visit root_path
    expect(page).to have_content('Sign In')
    expect(page).to have_content('Sign Up')
  end
end
