class GmailHomePage < GoogleHomePage
  def gmail_link
      @browser.link(:text =>"Gmail")
  end

  def username_input
      @browser.text_field(:id => 'Email')
  end

  def submit_username
    @browser.input(:id => 'next')
  end


  def password_input
    @browser.text_field(:id => 'Passwd')
  end

  def signin_button
    @browser.input(:id => 'signIn')
  end

  def goto
    GoogleHomePage.new(@browser).open
    self.gmail_link.when_present.click
  end

  def is_current_page?
    @browser.title.downcase.include?('gmail')
  end

  def login_to_gmail username = CREDENTIALS[:username], password = CREDENTIALS[:password]
    self.username_input.set username
    self.submit_username.when_present.click
    self.password_input.set password
    self.signin_button.when_present.click
  end
end