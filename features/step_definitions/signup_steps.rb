When(/^I am on Appimation home page/) do
  visit('legacy')
  unless find(:css, '#logo').visible?
    raise "Logo not visible"
  end
end

When(/^I open Try now/) do
  find(:css, '#start_button').click
  unless find(:css, '#signup').visible?
    raise "element not visible"
  end
end

Then("I enter all required information {string} {string} {string} {string}") do |email, password1, password2, projectName|
  find(:css, '#signup input[name="login"]').send_keys(email)
  find(:css, '#signup input[name="password1"]').send_keys(password1)
  find(:css, '#signup input[name="password2"]').send_keys(password2)
  find(:css, '#signup input[name="project_name"]').send_keys(projectName)
end 

Then("I close Try now") do
  find(:css, '#signup .closecross').click
  unless find(:css, '#logo').visible?
    raise "Logo not visible"
  end
end

When("I open SignIn page") do
  find(:css, '#login-b').click
  unless find(:css, '#login')
    raise "Sign in page not visible"
  end
end

Then("I enter all required information {string} {string}") do |email, password|
  find(:css, '#login input[name="login"]').send_keys(email)
  find(:css, '#login input[name="password"]').send_keys(password)  
end

Then("I try to sign in") do
  find(:css, '.button.button.button-block.innerButton').click
end






