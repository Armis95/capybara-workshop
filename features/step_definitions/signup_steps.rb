When("I open Gladiatus login website {string} {string}") do |user, password|
  @pages.login_page.load
  @pages.login_page.enterUserName(user)
  @pages.login_page.enterPassword(password)
end







