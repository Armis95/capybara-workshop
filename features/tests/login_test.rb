class LoginTest
  def initialize(pages)
    @pages = pages
  end

  def load_home_page
    @pages.page_home.load
    @pages.page_home.isVisible
  end

  def open_try_now
    @pages.page_home.openTryNow
  end

  def close_try_now
    @pages.page_home.closeTryNow
  end

  def fill_signup_form()
    user = Users.signup_email
    @pages.page_home.enterSignupEmail(user.email)
    user = Users.signup_password1
    @pages.page_home.enterSignupPassword1(user.password1)
    user = Users.signup_password2
    @pages.page_home.enterSignupPassword2(user.password2)
    user = Users.signup_projectName
    @pages.page_home.enterSignupProjectName(user.projectName)
  end

  def open_sign_in 
    @pages.page_home.openLogin
  end
  
  def fill_login_form()
    user = Users.login_email
    @pages.page_home.enterLoginEmail(user.email)
    user = Users.login_password    
    @pages.page_home.enterLoginPassword(user.password1)
  end 

  def click_login 
    @pages.page_home.clickLogin
  end

  def validate_login_error
    @pages.page_home.validateLoginError
  end
end