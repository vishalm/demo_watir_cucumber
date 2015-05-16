class BingSearchResultPage < BrowserContainer

  def conversion_result
    lhs_d = @browser.text_field(:id => "uc_lv").value
    lhs_u = @browser.select_list(:id => "uc_lt").option(:selected => 'selected').text
    rhs_d = @browser.text_field(:id => "uc_rv").value
    rhs_u = @browser.select_list(:id => "uc_rt").option(:selected => 'selected').text
    result = lhs_d + " " + lhs_u + " = " + rhs_d + " " + rhs_u
    puts result
    result
  end

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