class HomePage < BasePage
    attr_accessor :button_start
  def initialize
    @button_start = Element.new(:id, 'start_button')
    @form_sign_up = Element.new(:css, '#signup')
  end

  def visible?
    @button_start.visible?
  end

  def load
    visit('/legacy')
  end
  
  def OpenTry 
    @button_start.click
    @form_sign_up.click
end
