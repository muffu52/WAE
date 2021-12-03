Given(/^I am a new user$/) do
  @user = FactoryBot.build :user
end

When(/^I visit the main page$/) do
  visit authenticated_root_path
end

Then(/^I should see a ’Sign up’ link$/) do
  expect(page).to have_link('Sign up')
end

When(/^I click the ’Sign up’ link$/) do
  find_link('Sign up').click
end

Then(/^I should see a signup form$/) do
  expect(page).to have_selector('form#new_user')
end

When(/^I fill in the signup form$/) do
  fill_in 'Email', with: @user.email
  fill_in 'Name', with: @user.name
  fill_in 'Password', with: @user.password
  fill_in 'Password confirmation', with: @user.password_confirmation
  click_button 'Sign up'
end

Then(/^I should be logged in$/) do
  visit authenticated_root_path
  expect(page).to have_content @user.email
end

And(/^I should see my profile$/) do
  expect(page).to have_content @user.name
  #   save_and_open_page
end

Given(/^I am an existing user$/) do
  @user = FactoryBot.create :user
end

Then(/^I should see a ’Log in’ form$/) do
  expect(page).to have_selector('form#new_user')
end

When(/^I fill in the login form$/) do
  fill_in 'Email', with: @user.email
  fill_in 'Password', with: @user.password
  click_button 'Log in'
end
