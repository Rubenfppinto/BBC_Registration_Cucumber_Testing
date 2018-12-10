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
    sleep 2
end

When("I input my DOB") do
    bbc_registration_page.fill_day_field
    bbc_registration_page.fill_month_field
    bbc_registration_page.fill_year_field
    bbc_registration_page.click_dob_submit_button
    sleep 4
end

When("I input the necessary details with the password details a@{int}") do |int|
    pending # Write code here that turns the phrase above into concrete actions
end

Then("I receive the corresponding error Sorry, that password is too short. It needs to be eight characters or more.") do
    pending # Write code here that turns the phrase above into concrete actions
end

When("I input the necessary details with the password details abcd{int}") do |int|
pending # Write code here that turns the phrase above into concrete actions
end

Then("I receive the corresponding error Sorry, that password isn{string}s hard to guess.") do |string|
    pending # Write code here that turns the phrase above into concrete actions
end

When("I input the necessary details with the password details abcdefgh") do
    pending # Write code here that turns the phrase above into concrete actions
end

Then("I receive the corresponding error Sorry, that password isn{string}t a letter.") do |string|
    pending # Write code here that turns the phrase above into concrete actions
end

When("I input the necessary details with the password details {int}") do |int|
    pending # Write code here that turns the phrase above into concrete actions
end

Then("I receive the corresponding error Sorry, that password isn't valid. Please include a letter.") do
    pending # Write code here that turns the phrase above into concrete actions
end
