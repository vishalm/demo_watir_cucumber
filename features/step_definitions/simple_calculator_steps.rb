Given(/^I have two number ([-+]?[0-9]*\.?[0-9]+) and ([-+]?[0-9]*\.?[0-9]+) into the calculator$/) do |arg1, arg2|
  @calc = SimpleCalculator.new(arg1,arg2)
end

When(/^I perform (addition|subtraction|multiplication|division)$/) do|operator|
  @result = @calc.send(operator)
end

Then(/^the result should be ([-+]?[0-9]*\.?[0-9]+) on the screen$/) do |arg|
  expect(@result).to eq(arg.to_i)
end

