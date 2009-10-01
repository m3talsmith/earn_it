Given /^I have entered "([^\"]*)" \+ "([^\"]*)"$/ do |arg1, arg2|
  @number_1 = arg1.to_i
  @number_2 = arg2.to_i
end

When /^I run my function$/ do
  @result = (@number_1 + @number_2)
end

Then /^the result should be "([^\"]*)"$/ do |result|
  @result.should equal(result.to_i)
end
