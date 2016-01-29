require 'rails_helper'

feature 'Visitor views not expired jobs' do
  scenario 'successfully' do
    new_job = create_job
    company = create_company

    travel_to 1.day.ago do
      old_job_1 = create_job(company, "1diaatras")
    end

    travel_to 89.days.ago do
      old_job_89 = create_job(company, "89diasatras")
    end

    visit root_path

    expect(page).to have_content('Desenvolvedor Rails')
    expect(page).to have_content("89diasatras")
    expect(page).to have_content("1diaatras")
  end

  scenario 'and does not see expired jobs' do
    new_job = create_job
    company = create_company

    travel_to 90.days.ago do
      old_job_90 = create_job(company, "90diasatras")
    end

    travel_to 91.days.ago do
      old_job_91 = create_job(company, "91diasatras")
    end

    travel_to 365.days.ago do
      old_job_91 = create_job(company, "1anoatras")
    end

    visit root_path

    expect(page).not_to have_content("90diasatras")
    expect(page).not_to have_content("91diasatras")
    expect(page).not_to have_content("1anoatras")
  end
end
