Given /^Access to the "([^\"]*)" class$/ do |klass|
  require "couched_model"
  eval("#{klass}.respond_to?(:new)").should equal(true)
end

When /^I build a "([^\"]*)" class that inherits from "([^\"]*)"$/ do |new_klass, from_klass|
  @klass = Object::const_set(new_klass, eval("Class.new(#{from_klass})"))
  @klass.new.class.should equal(eval(new_klass))
  @klass.superclass.should equal(eval(from_klass))
end

When /^I include the properties "([^\"]*)" and "([^\"]*)"$/ do |arg1, arg2|
  @klass.class_eval do
    property_accessors arg1.to_sym, arg2.to_sym
  end
end

When /^I create a "([^\"]*)" instance with a "([^\"]*)" of "([^\"]*)" and a "([^\"]*)" of "([^\"]*)"$/ do |arg1, arg2, arg3, arg4, arg5|
  eval("#{arg1} = @klass.new(:#{arg2} => '#{arg3}', :#{arg4} => '#{arg5}')")
  eval("#{arg1}.class").should equal(@klass.new.class)
end

Then /^"([^\"]*)" should have a "([^\"]*)" of "([^\"]*)" and a "([^\"]*)" of "([^\"]*)"$/ do |arg1, arg2, arg3, arg4, arg5|
  instance = eval("#{arg1}")
  
  eval("instance.#{arg2}").should == arg3
  eval("instance.#{arg4}").should == arg5
end