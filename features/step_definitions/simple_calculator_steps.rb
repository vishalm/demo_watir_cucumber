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
  # test_excel = ExcelDataReader.new('../test_data/test_data.xls')
  @test_sheet = get_excel_array
end

When(/^I perform operation$/) do
  @calc = SimpleCalculator.new()

  @result = true
end

Then(/^the result should expected$/) do
  expect(@result).to eq(true)
end