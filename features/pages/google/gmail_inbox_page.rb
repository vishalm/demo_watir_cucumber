class GmailInboxPage < GmailHomePage
  def is_current_page?
    Watir::Wait.until { @browser.text.include? 'COMPOSE' }
    @browser.title.downcase.include?('inbox')
  end

  def get_email_list
    @browser.elements(class: 'zA')
  end

  def select_email(index = 1)
    self.get_email_list[index].click
  end

  def get_email_count
    self.get_email_list.length
  end
end