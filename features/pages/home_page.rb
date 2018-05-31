class HomePage < BasePage
  attr_accessor :button_start
def initialize
  @button_start = Element.new(:css, '#start_button')
  @form_sign_up = Element.new(:css, '#signup')
  @button_close_try_now = Element.new(:css, '#signup .closecross')

  @signup_email = Element.new(:css, '#signup input[name="login"]')
  @signup_pw1 = Element.new(:css, '#signup input[name="password1"]')
  @signup_pw2 = Element.new(:css, '#signup input[name="password2"]')
  @signup_projectName = Element.new(:css, '#signup input[name = "project_name"]')
  
  @login = Element.new(:css, '#login-b')
  @loginField = Element.new(:css, '#login')
  @loginEmail = Element.new(:css, '#login input[name="login"]')
  @loginPassword = Element.new(:css, '#login input[name="password"]')
  @loginButton = Element.new(:css, '#login .button')
  @loginErrorMessage = Element.new(:css, '#login form[action="/login"] .alert')
end

def isVisible
  @button_start.isVisible
end

def load
  visit('/legacy')
end

def openTryNow
  @button_start.click
  @form_sign_up.isVisible
  @button_close_try_now.isVisible
end

def closeTryNow
  @button_close_try_now.click
  @button_close_try_now.notVisible
end

def enterSignupEmail(email)
  @signup_email.send_keys(email)
end

def enterSignupPassword1(password1)
  @signup_pw1.send_keys(password1)
end

def enterSignupPassword2(password2)
  @signup_pw2.send_keys(password2)
end

def enterSignupProjectName(projectName)
  @signup_projectName.send_keys(projectName)
end

def openLogin 
  @login.click
  @loginField.isVisible
end

def enterLoginEmail(email)
  @loginEmail.send_keys(email)
end

def enterLoginPassword(password)
  @loginPassword.send_keys(password)
end

def clickLogin
  @loginButton.click
end

def validateLoginError
  @loginErrorMessage.isVisible
end 

end