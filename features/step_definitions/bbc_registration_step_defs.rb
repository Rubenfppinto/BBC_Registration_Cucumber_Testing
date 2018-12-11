Given("I am on the BBC home page") do 
    bbc_homepage.visit_homepage
end

Given("I move to the sign in page") do 
    bbc_homepage.click_sign_in_link
end

When("I proceed to register") do
    bbc_sign_in_page.click_register_link
end

When("I select I am over 13") do
    bbc_registration_page.click_thirteen_or_over
end

When("I input my DOB") do
    bbc_registration_page.fill_day_field
    bbc_registration_page.fill_month_field
    bbc_registration_page.fill_year_field
    bbc_registration_page.click_submit_button
end

When(/^I input the necessary details with the password details (.*)$/) do |password|
    @pw = password
    bbc_registration_page.fill_in_password(@pw)
    bbc_registration_page.click_submit_button
end

Then(/^I receive the corresponding error (.*)$/) do |error|
    expect(bbc_registration_page.get_password_error_message).to eq error
end