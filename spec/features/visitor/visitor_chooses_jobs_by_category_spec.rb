require 'rails_helper'

feature 'Visitor chooses jobs by category' do
  scenario 'successfully' do
    category = create_category

    job = create_job(category: category)

    job_2 = create_job(title: 'Vaga de Dev',
                       description: 'Dev Junior Rails com ao menos um projeto',
                       location: 'Acre',
                       category: category)
    visit root_path

    click_on category.name

    expect(page).to have_content category.name

    expect(page).to have_content job.title
    expect(page).to have_content job.category.name
    expect(page).to have_content job.description
    expect(page).to have_content job.location

    expect(page).to have_content job_2.title
    expect(page).to have_content job_2.category.name
    expect(page).to have_content job_2.description
    expect(page).to have_content job_2.location
  end

  scenario 'and does not see other category jobs' do
    category_2 = create_category('Designer')

    job = create_job

    visit root_path

    click_on category_2.name

    expect(page).to have_content category_2.name

    expect(page).not_to have_content job.title
    expect(page).not_to have_content job.category.name
    expect(page).not_to have_content job.description
    expect(page).not_to have_content job.location
  end

end
