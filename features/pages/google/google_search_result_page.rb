class GoogleSearchResultPage < GoogleHomePage

  def get_results_count_text
    # @browser.div(:id => "resultStats").wait_while_present
    sleep 2
    @browser.div(:id => "resultStats").text
  end

  def number_search_results
    puts get_results_count_text
    # result = /[\s\D]*([\d,]+) results \(\d+\.\d+ seconds\)/.match(get_results_count_text)
    # raise "Could not determine number of search results from: '#{get_results_count_text}'" if not result
    # result.captures[0].gsub(",","").to_i
    count  = get_results_count_text.split(" ")[1].gsub(",","").to_i
    puts count
    count
  end

end