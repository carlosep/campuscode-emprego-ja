require 'rails_helper'

feature 'User creates a new job' do
  scenario 'successfully' do
    new_company = create_company(name:     'Code Campus',
                                 location: 'Recife',
                                 mail:     'contato@codecampus.com.br',
                                 phone:    '1111-5555')

    new_category = create_category(name: 'Dev Ninja')

    job = create_job

    visit edit_job_path(job)
    sign_in

    fill_in 'Title',       with: 'Dev Mais que Master'
    fill_in 'Location',    with: 'Recife'
    select  new_company.name
    select  new_category.name
    fill_in 'Description', with: 'Vaga de Dev Mais que Master para o Quickstart'

    click_on 'Update Job'

    expect(page).to have_content 'Dev Mais que Master'
    expect(page).to have_content 'Recife'
    expect(page).to have_content 'Dev Ninja'
    expect(page).to have_content 'Code Campus'
    expect(page).to have_content 'Vaga de Dev Mais que Master para o Quickstart'
  end

  scenario 'featured job' do
    job = create_job

    visit edit_job_path(job)
    sign_in

    fill_in 'Title',       with: 'Dev Mais que Master'
    fill_in 'Location',    with: 'Recife'
    select  'Campus Code'
    select  'Desenvolvedor'
    fill_in 'Description', with: 'Vaga de Dev Mais que Master para o Quickstart'
    check   'Featured'

    click_on 'Update Job'

    expect(page).to have_content 'Dev Mais que Master'
    expect(page).to have_content 'Recife'
    expect(page).to have_content 'Desenvolvedor'
    expect(page).to have_content 'Campus Code'
    expect(page).to have_content 'Vaga de Dev Mais que Master para o Quickstart'
    expect(page).to have_content 'Featured Job'
  end
end
