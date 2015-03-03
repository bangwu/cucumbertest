Before('@admin') do
  puts 'GO!'
end

After('@admin') do
  puts 'STOP!'	
end