class BingSearchResultPage < BrowserContainer

  def get_results_count_text
    @browser.span(:class => "sb_count").text
  end

  def number_search_results
    puts get_results_count_text
    get_results_count_text.split(" ")[0].gsub(",","").to_i
  end

  # def results
  #   sleep 5
  #   @browser.span(:class => "sb_count").text
  # end
  #
  # def conversion_result
  #   @browser.p(:class => "cipd").text
  # end
  #
  # def number_search_results
  #   result = /([\d,]+) RESULTS$/.match(results)
  #   puts result
  #   raise "Could not determine number of search results from: '#{results}'" if not result
  #   result.captures[0].gsub(",","").gsub(".", "").to_i
  # end

end