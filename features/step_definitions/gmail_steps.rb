Given(/^I am on gmail home page$/) do
  @gmail_home = GmailHomePage.new(@browser)
  @gmail_home.goto
  @gmail_home.is_current_page?.should == true
end

When(/^I provide valid credentials$/) do
  @gmail_home.login_to_gmail
end

Then(/^I should see my inbox$/) do
  gmail_inbox = GmailInboxPage.new(@browser)
  gmail_inbox.is_current_page?.should == true
end