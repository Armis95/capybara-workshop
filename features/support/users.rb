module Users
  def Users.signup_form
    @signup_form ||= User.new(args = {email: 'armis@grr.la'})
    @signup_form ||= User.new(args = {password1: 'password'})
    @signup_form ||= User.new(args = {password2: 'password'})
    @signup_form ||= User.new(args = {projectName: 'project'})   
    @signup_form
  end

  def Users.login_form
    @login_form ||= User.new(args = {email: 'armis@grr.la'})
    @login_form ||= User.new(dargs = {password1: 'password'})
  end

  class User
    attr_reader :email, :password, :password1, :password2, :projectName
    def initialize(args = {})
      @email = args[:email]
      @password1 = args[:password1]
      @password2 = args[:password2]
      @projectName = args[:projectName]
    end
  end
end