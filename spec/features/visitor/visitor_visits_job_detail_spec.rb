require 'rails_helper'

feature 'Visitor visits job details' do
  scenario 'successfully' do
    job = create_job

    visit root_path

    click_on 'More'

    expect(page).to have_content job.title
    expect(page).to have_content job.category.name
    expect(page).to have_content job.company.name
    expect(page).to have_content job.description
    expect(page).to have_content job.location
  end
end
