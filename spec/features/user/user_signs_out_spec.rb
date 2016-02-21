require 'rails_helper'

feature 'User signs out' do
  scenario 'successfully' do
    visit root_path
    click_on 'Sign in'
    sign_in
    click_on 'Sign out'
    expect(page).to have_content('Signed out successfully.')
  end
end
