class Pages
  def login_page
    @login_page ||= LoginPage.new
    @login_page
  end
end