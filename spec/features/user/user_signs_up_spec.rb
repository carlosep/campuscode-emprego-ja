require 'rails_helper'

feature 'User signs up' do
  scenario 'successfully' do
    visit root_path
    click_on "Sign up"
    fill_in "Email", with: 'john@john.com'
    fill_in "Password", with: '12345678'
    fill_in "Password confirmation", with: '12345678'
    within('.actions') do
      click_on "Sign up"
    end
    expect(page).to have_content("Welcome! You have signed up successfully.")
  end

  scenario 'with blank fields' do
    visit root_path
    click_on "Sign up"
    within('.actions') do
      click_on "Sign up"
    end
    expect(page).to have_content("Email can't be blank")
    expect(page).to have_content("Password can't be blank")
  end

  scenario 'with unmatching password' do
    visit root_path
    click_on "Sign up"
    fill_in "Email", with: 'john@john.com'
    fill_in "Password", with: '12345678'
    fill_in "Password confirmation", with: '87654321'
    within('.actions') do
      click_on "Sign up"
    end
    expect(page).to have_content("Password confirmation doesn't match Password")
  end

  scenario 'with existing user' do
    user = User.create(email: "johndoe@john.com", password: "12312312")
    visit root_path
    click_on "Sign up"
    fill_in "Email", with: 'johndoe@john.com'
    fill_in "Password", with: '12312312'
    fill_in "Password confirmation", with: '12312312'
    within('.actions') do
      click_on "Sign up"
    end
    expect(page).to have_content("Email has already been taken")
  end
end
