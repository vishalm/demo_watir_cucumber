class GoogleHomePage

  def initialize(browser)
    @browser = browser
  end
  # Web Elements
  def search_text_field
    @browser.text_field(:name => "q")
  end

  def search_button
    @browser.button(:name => "btnG")
  end

  # How to use it
  def open
    @browser.goto("http://www.google.com")
    puts @browser.title
  end

  def is_current_page?
    @browser.title.include?('Google')
  end


  def search_for term
    self.search_text_field.set term
    self.search_button.click
  end

end