
class EmailDetailPage < GmailInboxPage

  def is_current_page?
    @browser.h2(class: "hP").when_present.visible?
  end


end