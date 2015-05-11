class Site < BrowserContainer
  def google_home_page
    @google_home_page = GoogleHomePage.new(@browser)
  end

  def bing_home_page
    @bing_home_page = BingHomePage.new(@browser)
  end

  def close
    @browser.close
  end
end