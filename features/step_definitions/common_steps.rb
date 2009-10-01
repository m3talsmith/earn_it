Given /^the following "([^\"]*)":$/ do |model_name, table|
  table.hashes.each do |model|
    eval_klass = "#{model_name}.create!("
    
    model.each do |key, value|
      eval_klass += " :#{key.gsub(" ", "_").downcase} => '#{value}',"
    end
    
    eval_klass = eval_klass.chomp.chop
    eval_klass += ")"
    
    eval(eval_klass)
  end
end

Then /^I should see a list of "([^\"]*)" with a length of at least "([^\"]*)"$/ do |list_class, length|
  response.should have_selector(".#{list_class}") do |inner_selection|
    inner_selection.should have_selector(".#{list_class.to_s.singularize}", :count => length.to_i)
  end
end

Then /^I should not see a list of "([^\"]*)" with a length of at least "([^\"]*)"$/ do |list_class, length|
  response.should_not have_selector(".#{list_class}") do |inner_selection|
    inner_selection.should_not have_selector(".#{list_class.to_s.singularize}", :count => length.to_i)
  end
end