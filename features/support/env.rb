require 'rspec'
require 'watir-webdriver'
require 'cucumber'
require 'rake'
require 'spreadsheet'
require 'yaml'

include Selenium
include RSpec::Matchers

require File.dirname(__FILE__) + "/../pages/pages"

CREDENTIALS = YAML.load_file(File.dirname(__FILE__) + '/credentials.yml')
