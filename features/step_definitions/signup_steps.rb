When(/^I am on Discord login page/) do
  @pages.page_home.load
  @pages.page_home.checkEmailField
end

Then("I fill all required input fields {string} {string}") do |email, password|
  @pages.page_home.fillSignUpFields(email, password)
  @pages.page_home.clickSubmit
end

Then("I send .txt file to User2 {string}") do |path|
  
  @pages.page_home.selectUser
  @pages.page_home.selectFile(path)
  @pages.page_home.findDownloadButton
  @pages.page_home.deleteFile
end

Then("I logout from Discord") do 
  @pages.page_home.logoutUser
  @pages.page_home.checkEmailField
end