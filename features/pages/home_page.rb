class HomePage < BasePage
    attr_accessor :button_start
  def initialize
    @login_email_field = Element.new(:css, '.inputWrapper-31_8H8 input[type="email"]')
    @login_passsword_field = Element.new(:css, '.inputWrapper-31_8H8 input[type="password"]')
    @login_submit_button = Element.new(:css, '.button-3k0cO7')

    @user_avatar = Element.new(:css, '.avatar-3JE4B3')

    @my_account_button = Element.new(:css, '.button-2b6hmh > svg')
    @my_account_logout_button = Element.new(:css, '.itemDefault-3Jdr52:nth-of-type(19)')
    @logout_button = Element.new(:css, '.modal-3HD5ck .button-38aScr:nth-of-type(1)')

    @select_user = Element.new(:css, '.private-channels .channel  a[href*="/channels/@me/360406287210643468"]')
    @select_add_file = Element.new(:css, '.file-input')
    @upload_button = Element.new(:css, '.button-primary')

    @download_button = Element.new(:css, '.downloadButton-23tKQp')
    @before_options = Element.new(:css, '.metadata-3WGS0M')
    @open_options = Element.new(:css, '.message-group .comment>div:hover .btn-option')
    @delete_button = Element.new(:css, '.button-1ZXqCA:nth-of-type(3)')
    @submit_delete = Element.new(:css, 'button[type="submit"]')
  end

  def checkEmailField
    @login_email_field.visible?
  end

  def load
    visit('/login')
  end

  def fillSignUpFields(email, password)
    @login_email_field.send_keys(email)
    @login_passsword_field.send_keys(password) 
  end

  def clickSubmit 
    @login_submit_button.click
    @user_avatar.visible?
  end

  def logoutUser
    @my_account_button.click
    @my_account_logout_button.click
    @logout_button.click
  end

  def selectUser 
    @select_user.click
  end

  def selectFile(path)
    @select_add_file.send_keys(path)
    @upload_button.click
  end

  def findDownloadButton
    @download_button.visible?
  end

  def deleteFile
    @before_options.click
    @open_options.click
    @delete_button.click
    @submit_delete.click
  end
end