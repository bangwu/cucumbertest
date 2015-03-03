Before('@admin') do |scenario|
  puts "Starting scenario #{scenario.name}"
end

After('@admin') do |scenario|
  puts 'STOP!' unless scenario.failed?	
end

Around('@admin') do |scenario, block|
  puts "About to run #{scenario.name}"
  block.call
  puts "Finished running #{scenario.name}"
end

After do |scenario|
  save_and_open_page if scenario.failed?	
end