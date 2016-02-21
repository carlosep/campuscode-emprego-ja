require 'rails_helper'

feature 'User views sign out link' do
  scenario 'successfully' do
    visit root_path
    click_on 'Sign in'
    sign_in
    expect(page).to have_content('Sign out')
  end
  scenario 'unsuccessfully' do
    visit root_path
    expect(page).to have_content('Sign in')
    expect(page).to have_content('Sign up')
  end
end
