Given(/^I am on the (.*) Home Page$/) do |search_page|
  @search_page = search_page
  @search_engine = Object.const_get("#{search_page}HomePage").new(@browser)
  @search_engine.open
  @search_engine.is_current_page?.should == true
end
When(/^I search for "([^"]*)"$/) do |arg|
  @search_engine.search_for arg
end
Then(/^I should see at least (.*) results$/) do |expected_number_of|
  @search_result = Object.const_get("#{@search_page}SearchResultPage").new(@browser)
  @search_result.number_search_results.should >= expected_number_of.gsub(",","").to_i
end
When(/^I convert (.+)$/) do |conversion_statement|
  @search_engine.search_for "convert #{conversion_statement}"
end
Then(/^I should see the conversion result "([^"]*)"$/) do |exp_conversion_result|
  @search_result = Object.const_get("#{@search_page}SearchResultPage").new(@browser)
  @search_result.conversion_result.gsub('metres', 'meters').should == exp_conversion_result
end
When(/^I search for a ridiculously small number of results$/) do
  true.should == false
end
Then(/^I should see at most (\d+) results$/) do |arg|
  true.should == false
end