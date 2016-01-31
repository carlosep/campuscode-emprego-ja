require 'rails_helper'

feature 'Visitor view recent jobs' do
  scenario 'successfully' do
    create_job
    visit root_path

    # primeiro elemento com o css "jobs" da pagina
    within('.jobs:first-child') do
      expect(page).to have_content('Novidade')
    end
  end
end
