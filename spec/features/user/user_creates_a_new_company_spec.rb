require 'rails_helper'

feature 'User creates a new company' do
  scenario 'successfully' do
    company = create_company

    visit new_company_path
    sign_in

    fill_in 'Name',     with: company.name
    fill_in 'Location', with: company.location
    fill_in 'Mail',     with: company.mail
    fill_in 'Phone',    with: company.phone

    click_on 'Criar Empresa'

    expect(page).to have_content company.name
    expect(page).to have_content company.location
    expect(page).to have_content company.mail
    expect(page).to have_content company.phone
  end

  scenario 'invalid' do
    visit new_company_path
    sign_in
    click_on 'Criar Empresa'

    expect(page).to have_content 'Warning! All fields are mandatory.'
  end
end
