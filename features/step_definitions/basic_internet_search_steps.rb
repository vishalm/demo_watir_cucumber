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
  search_result = Object.const_get("#{@search_page}SearchResultPage").new(@browser)
  search_result.number_search_results.should >= expected_number_of.gsub(",","").to_i
end
When(/^I convert (\d+) cm to inches$/) do |arg|
  pending
end
Then(/^I should see the conversion result "([^"]*)"$/) do |arg|
  pending
end
When(/^I search for a ridiculously small number of results$/) do
  pending
end
Then(/^I should see at most (\d+) results$/) do |arg|
  pending
end