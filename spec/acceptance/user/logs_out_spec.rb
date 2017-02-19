require 'rails_helper'

RSpec.feature 'User logs out' do
  scenario 'by selecting logout' do
    user = create(:enrolled_user)
    login(user)
    click_link 'Logout'

    expect(page).to have_content('Log In')
    expect(page).to_not have_content("#{user.first_name} #{user.last_name}")
  end
end
