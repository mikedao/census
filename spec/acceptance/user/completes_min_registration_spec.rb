require 'rails_helper'

RSpec.feature 'User signs up' do
  scenario 'by completing minimum registration' do
    user = attributes_for(:user)
    role = create :role, name: 'active student'
    invite = create :invitation, role: role

    visit invite.generate_url(new_user_registration_url)

    fill_in 'First Name*', with: 'Jeff'
    fill_in 'Last Name*', with: 'Casimir'
    fill_in 'Password*', with: 'password'
    fill_in 'Password Confirmation*', with: 'password'
    click_button 'Sign up'

    help_message = 'You have succesfully signed up!'
    expect(page).to have_content(help_message)
  end
end
