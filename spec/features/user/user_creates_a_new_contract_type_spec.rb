require 'rails_helper'

feature 'User creates a new contract type' do
  scenario 'successfully' do
    visit new_contract_path
    sign_in

    fill_in 'Name', with: 'CLT'

    click_on 'Create Contract'

    expect(page).to have_content('CLT')
  end

  scenario 'unsuccessfully' do
    visit new_contract_path
    sign_in
    click_on 'Create Contract'
    expect(page).to have_content('Warning! All fields are mandatory.')
  end
end
