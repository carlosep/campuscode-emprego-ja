require 'rails_helper'

feature 'Visitor is redirected to sign in' do
  scenario 'when trying to create a job' do
    visit new_job_path
    expect(page).to have_current_path(user_session_path)
  end

  scenario 'when trying to edit a job' do
    job = create_job
    visit edit_job_path(job)
    expect(page).to have_current_path(user_session_path)
  end

  scenario 'when trying to create a company' do
    visit new_company_path
    expect(page).to have_current_path(user_session_path)
  end

  scenario 'when trying to edit a company' do
    company = create_company
    visit edit_company_path(company)
    expect(page).to have_current_path(user_session_path)
  end

  scenario 'when trying to create a category' do
    visit new_category_path
    expect(page).to have_current_path(user_session_path)
  end
end
