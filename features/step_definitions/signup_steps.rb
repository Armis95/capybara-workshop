When(/^I am on Appimation home page/) do
  visit('/')
  unless find(:css, '#logo').visible?
    raise "Logo not visible"
  end
end

When(/^I open Try now/) do
  find(:css, '#start_button').visible?
  unless find(:css, '#signup')
    raise "Not found"
  end
end

Then(/^I close Try now/) do 
  find(:css, '#signup .closecross').click
end