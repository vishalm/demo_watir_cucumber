require 'rspec'
require 'watir-webdriver'
require 'cucumber'
require 'rake'
require 'spreadsheet'
#require 'page-object'
require 'yaml'

#require 'spec/spec_helper'


include RSpec::Matchers
#include PageObject

require File.dirname(__FILE__) + "/../pages/pages"

CREDENTIALS = YAML.load_file(File.dirname(__FILE__) + '/credentials.yml')
