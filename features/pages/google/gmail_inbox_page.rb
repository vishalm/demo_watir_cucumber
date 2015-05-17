class GmailInboxPage < GmailHomePage
  def is_current_page?
    Watir::Wait.until { @browser.text.include? 'COMPOSE' }
    @browser.title.downcase.include?('inbox')
  end
end