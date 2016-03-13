require 'rails_helper'

feature 'Visitor visits Emprego Ja home page' do
  scenario 'successfully' do
    visit root_path
    expect(page).to have_content('Last Jobs')
  end
  scenario 'and see jobs' do
    create_job(title: 'Vaga de Dev',
               description: 'Dev Junior Rails com ao menos um projeto',
               location: 'São Paulo')

    create_job(title: 'Vaga de QA',
               description: 'QA Junior com ao menos um projeto',
               location: 'São Paulo')

    visit root_path

    expect(page).to have_content('Vaga de Dev')
    expect(page).to have_content('Campus Code')
    expect(page).to have_content('Desenvolvedor')
    expect(page).to have_content('São Paulo')
    expect(page).to have_content('Vaga de QA')
  end
end
