When(/^I am on Appimation home page/) do
  visit('/')
  find(:css, '#start_button')
  find(:xpath, "//button[@id = 'start_button']")

  find(:css, '#signup-b')
  find(:xpath, "//button[@id = 'signup-b']")

  find(:css, '#cta')
  find(:xpath, "//section[@id = 'cta']")

  find(:css, '#name')
  find(:xpath, "//*[@id='name']")

  
  find(:css, '#email')
  find(:xpath, "//*[@id='email']")
  
  find(:css, '#contactus-message')
  find(:xpath, "//*[@id='contactus-message']")

  find(:css, '#contactus-button')
  find(:xpath, "//*[@id='contactus-button']")


  find(:css, '.fa-facebook')
  find(:xpath, "//*[@id='footer']//*[@class = 'icon fa-facebook']")
end
