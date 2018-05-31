module Users
  def Users.fill_signup_form
    @fill_signup_form ||= User.new(args = {
      email: 'armis@grr.la',
      password1: 'passowrd',
      password2: 'password',
      projectName: 'project'
    })
    @fill_signup_form
  end

  def Users.fill_login_form
    @fill_login_form ||= User.new(args = {
      email: 'armis@grr.la',
      password: 'password'
    })  
    @fill_login_form
  end

  class User
    attr_reader :email, :password, :password1, :password2, :projectName
    def initialize(args = {})
      @email = args[:email]
      @password = args[:password]
      @password1 = args[:password1]
      @password2 = args[:password2]
      @projectName = args[:projectName]
    end
  end
end