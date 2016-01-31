require 'rails_helper'

feature 'Visitor chooses jobs by contract' do
  scenario 'successfully' do
    contract = create_contract #add macro

    job = create_job(category: category)

    job_2 = create_job(title: 'Vaga de Dev',
                       description: 'Dev Junior Rails com ao menos um projeto',
                       location: 'Acre',
                       contract: contract)
    visit root_path

    click_on contract.name

    expect(page).to have_content contract.name

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
    contract_2 = create_contract('PJ')

    job = create_job

    visit root_path

    click_on contract_2.name

    expect(page).to have_content contract_2.name

    expect(page).not_to have_content job.title
    expect(page).not_to have_content job.category.name
    expect(page).not_to have_content job.company.name
    expect(page).not_to have_content job.description
    expect(page).not_to have_content job.location
  end

end
