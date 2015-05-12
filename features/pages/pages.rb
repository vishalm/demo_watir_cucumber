require 'rspec'
require 'watir-webdriver'
require 'cucumber'
require 'rake'
# require 'pickle'




include RSpec::Matchers
require File.dirname(__FILE__) + "/../pages/browser_container"
require File.dirname(__FILE__) + "/../pages/site"
require File.dirname(__FILE__) + "/../pages/config/driver_config"
require File.dirname(__FILE__) + "/../pages/simple_calculator"

include Automation