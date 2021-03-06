require 'rails_helper'

feature 'User creates a new job' do
  scenario 'successfully' do
    job = create_job
    visit new_job_path
    sign_in

    fill_in 'Title',          with: job.title
    fill_in 'Location',       with: job.location
    select job.category.name, from: 'Category'
    select job.company.name,  from: 'Company'
    select job.contract.name, from: 'Contract'
    fill_in 'Description',    with: job.description

    click_on 'Create Job'

    within('.show-job') do
      expect(page).to have_content job.title
      expect(page).to have_content job.location
      expect(page).to have_content job.category.name
      expect(page).to have_content job.company.name
      expect(page).to have_content job.contract.name
      expect(page).to have_content job.description
    end
  end

  scenario 'featured' do
    job = create_job
    visit new_job_path
    sign_in

    fill_in 'Title',          with: job.title
    fill_in 'Location',       with: job.location
    select job.category.name, from: 'Category'
    select job.company.name,  from: 'Company'
    fill_in 'Description',    with: job.description
    check   'Featured'

    click_on 'Create Job'

    expect(page).to have_content job.title
    expect(page).to have_content job.location
    expect(page).to have_content job.category.name
    expect(page).to have_content job.company.name
    expect(page).to have_content job.description
    expect(page).to have_content 'Featured Job'
  end

  scenario 'invalid data' do
    visit new_job_path
    sign_in

    click_on 'Create Job'

    %w(Title Category Description Location).each do |field|
      expect(page).to have_content "#{field} can\'t be blank"
    end
  end
end
