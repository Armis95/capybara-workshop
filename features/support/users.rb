module Users
  def Users.signup_email
    @signup_email ||= User.new(args = {email: 'armis@grr.la'})
  end

  def Users.signup_password1    
    @signup_password1 ||= User.new(args = {password1: 'password'})
  end
  def Users.signup_password2
    @signup_password2 ||= User.new(args = {password2: 'password'})
  end

  def Users.signup_projectName 
    @signup_projectName ||= User.new(args = {projectName: 'project'})   
  end

  def Users.login_email
    @login_email ||= User.new(args = {email: 'armis@grr.la'})  
  end 
  
  def Users.login_password 
    @login_form ||= User.new(dargs = {password1: 'password'})    
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