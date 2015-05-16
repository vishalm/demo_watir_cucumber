class GoogleSearchResultPage < GoogleHomePage

  def get_results_count_text
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

  def conversion_result
    lhs_d = @browser.text_field(:id => "ucw_lhs_d").value
    lhs_u = @browser.select_list(:id => "ucw_lhs_u").value
    rhs_d = @browser.text_field(:id => "ucw_rhs_d").value
    rhs_u = @browser.select_list(:id => "ucw_rhs_u").value
    result = lhs_d + " " + lhs_u + " = " + rhs_d + " " + rhs_u
    puts result
    result
  end

end