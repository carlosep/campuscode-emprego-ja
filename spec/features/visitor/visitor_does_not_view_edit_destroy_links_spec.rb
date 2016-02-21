require 'rails_helper'

feature 'Visitor does not view edit and destroy links' do
  scenario 'successfully' do
    create_job
    visit root_path

    expect(page).not_to have_content('Edit')
    expect(page).not_to have_content('Destroy')
  end
end
