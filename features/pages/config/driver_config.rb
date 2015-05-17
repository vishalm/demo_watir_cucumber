
module Automation

  def launch_browser
    include Zip
    @browser = Watir::Browser.new :firefox
    @browser.driver.manage.timeouts.implicit_wait = 30
    #@driver.default_timeout = 90
    #@driver.manage.window.maximize
    @browser.driver.manage.window.maximize
  end

  def launch_remote_browser
    include Zip
    capabilities = WebDriver::Remote::Capabilities.firefox
    @browser = Watir::Browser.new(:remote, :url => 'http://localhost:4444/wd/hub', :desired_capabilities => capabilities)
    @browser.driver.manage.timeouts.implicit_wait = 30
    @browser.driver.manage.window.maximize
  end

  def browser
    @browser
  end

  def quit_browser
    @browser.close
  end
end
#def wait_for_element element_hash
#  wait = Selenium::WebDriver::Wait.new(:timeout => 0.5) # seconds
#  begin
#    wait.until { driver.find_element element_hash }
#  rescue Selenium::WebDriver::Error::TimeOutError
#    raise "Could not find element #{element_hash}"
#  end
#end
#

