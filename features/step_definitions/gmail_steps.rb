Given(/^I am on gmail home page$/) do
  @gmail_home = GmailHomePage.new(@browser)
  @gmail_home.goto
  @gmail_home.is_current_page?.should == true
end

When(/^I provide valid credentials$/) do
  @gmail_home.login_to_gmail
end

Then(/^I should see my inbox$/) do
  @gmail_inbox = GmailInboxPage.new(@browser)
  @gmail_inbox.is_current_page?.should == true
end

And(/^I should have (\d+) email in my inbox$/) do |email_count|
  @gmail_inbox.get_email_count.should == email_count.to_i
end

And(/^I read the first email successfully$/) do
  @gmail_inbox.select_email(1)
  email_detail = EmailDetailPage.new(@browser)
  email_detail.is_current_page?.should == true
end