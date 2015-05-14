Given(/^I have two number ([-+]?[0-9]*\.?[0-9]+) and ([-+]?[0-9]*\.?[0-9]+) into the calculator$/) do |arg1, arg2|
  @calc = SimpleCalculator.new(arg1,arg2)
end

When(/^I perform (addition|subtraction|multiplication|division)$/) do|operator|
  @result = @calc.send(operator)
end

Then(/^the result should be ([-+]?[0-9]*\.?[0-9]+) on the screen$/) do |arg|
  expect(@result).to eq(arg.to_i)
end


Given(/^I have excel test data source$/) do
  test_excel = ExcelDataReader.new
  @test_sheet = test_excel.get_excel_array
end

When(/^I perform operation$/) do
  @results = Array.new
  calc = SimpleCalculator.new()
  @test_sheet.each do |row|
    @results.push(calc.send(row['opt'],row['op1'],row['op2']))
  end
end

Then(/^the result should expected$/) do
i = 0
  @results.each do |result|
    expect(result).to eq(@test_sheet[i]['result'])
    i = i + 1
  end

end