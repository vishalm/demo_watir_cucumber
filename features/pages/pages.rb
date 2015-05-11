require 'rspec'
require 'watir-webdriver'
require 'cucumber'
require 'rake'
#require 'page-object'
#require 'spec/spec_helper'


include RSpec::Matchers
#include PageObject
require File.dirname(__FILE__) + "/../pages/browser_container"
require File.dirname(__FILE__) + "/../pages/site"
require File.dirname(__FILE__) + "/../pages/config/driver_config"
require File.dirname(__FILE__) + "/../pages/bing/bing_home_page"
require File.dirname(__FILE__) + "/../pages/bing/bing_search_results_page"
require File.dirname(__FILE__) + "/../pages/google/google_home_page"
require File.dirname(__FILE__) + "/../pages/google/google_search_result_page"


require File.dirname(__FILE__) + "/../pages/simple_calculator"

include Automation