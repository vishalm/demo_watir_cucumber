require 'rspec'
require 'watir-webdriver'
require 'cucumber'
require 'rake'
require 'spreadsheet'
require 'roo'




include RSpec::Matchers
require File.dirname(__FILE__) + "/../pages/browser_container"
require File.dirname(__FILE__) + "/../pages/site"
require File.dirname(__FILE__) + "/../pages/config/driver_config"
require File.dirname(__FILE__) + "/../pages/simple_calculator"
require File.dirname(__FILE__) + "/../pages/google/google_home_page"
require File.dirname(__FILE__) + "/../../features/pages/google/gmail_home_page"
require File.dirname(__FILE__) + "/../pages/google/gmail_inbox_page"

include Automation