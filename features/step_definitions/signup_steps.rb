When(/^I am on Appimation home page/) do
  @tests.login_tests.load_home_page
end

When(/^I open Try now/) do
  @tests.login_tests.open_try_now
end

Then("I fill all required input fields") do 
  @tests.login_tests.fill_signup_form()
end


Then("I close Try now") do
  @tests.login_tests.close_try_now
end

When("I open SignIn page") do
  @tests.login_tests.open_sign_in
end

Then("I enter all required information") do
  @tests.login_tests.fill_login_form()
end

When("I try to sign in") do
  @tests.login_tests.click_login
end

Then("I validate error message") do 
  @tests.login_tests.validate_login_error
end







