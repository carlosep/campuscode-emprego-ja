require 'rails_helper'

feature 'Visitor does not view expired jobs' do
  scenario 'successfully' do
    company = create_company
    new_job = create_job(company, 'Desenvolvedor front-end')

    travel_to 200.days.ago do
      job = create_job
    end

    visit root_path

    expect(page).not_to have_content("Desenvolvedor Rails")
    expect(page).to have_content("Desenvolvedor front-end")
  end
end
