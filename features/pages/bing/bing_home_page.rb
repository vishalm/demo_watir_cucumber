class BingHomePage

  def initialize browser
    @browser = browser
  end

    def search_text_field
      @browser.text_field(:id => "sb_form_q")
    end

    def search_button
      @browser.input(:class => "b_searchboxSubmit")
    end


    def open
      @browser.goto("http://www.bing.com")
      puts @browser.title
    end

    def is_current_page?
      @browser.title.include?('Bing')
    end

    def search_for term
      self.search_text_field.set term
      self.search_button.click
    end

end