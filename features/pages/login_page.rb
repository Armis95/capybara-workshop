class LoginPage < BasePage
    attr_accessor :button_start
  def initialize
    @user_name = Element.new(:css, '#login_username')
    @password = Element.new(:css, '#login_password')
    @server_select = Element.new(:css, '')
  end


  def load
    visit('/')
  end

  def enterUserName(user)
    @user_name.isVisible
    @user_name.send_keys(user)
  end

  def enterPassword(password)
    @password.isVisible 
    @password.send_keys(password)
  end
end
