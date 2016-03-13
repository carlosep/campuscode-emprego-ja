require 'rails_helper'

feature 'Visitor view premium companies' do
  scenario 'successfully' do
    company = create_company

    5.times do
      create_job(company: company)
    end

    visit root_path
    expect(page).to have_content('Premium Company')
  end
end
