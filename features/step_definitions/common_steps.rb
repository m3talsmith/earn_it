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
