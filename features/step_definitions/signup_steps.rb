When(/^I am on Appimation home page/) do
  @pages.page_home.load
  @pages.page_home.isVisible
end


When(/^I open Try now/) do
  @pages.page_home.openTryNow
end

Then("I fill all required input fields {string} {string} {string} {string}") do |email, password1, password2, projectName|
  @pages.page_home.fillSignUpFields(email, password1, password2, projectName)
end


Then("I close Try now") do
  @pages.page_home.closeTryNow
end

When("I open SignIn page") do
  @pages.page_home.openLogin
end

Then("I enter all required information {string} {string}") do |email, password|
  @pages.page_home.fillLoginFields(email,password)
end

Then("I try to sign in") do
  @pages.page_home.signIn
end






