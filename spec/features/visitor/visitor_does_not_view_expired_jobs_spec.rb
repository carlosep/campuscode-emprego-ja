require 'rails_helper'

feature 'Visitor does not view expired jobs' do
  scenario 'successfully' do
    new_job = create_job(title: 'Desenvolvedor front-end')
    job = nil

    travel_to 200.days.ago do
      job = create_job
    end

    visit root_path

    expect(page).not_to have_content job.title
    expect(page).to have_content new_job.title
  end
end
