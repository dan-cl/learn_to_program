def log desc, &block
  puts 'Start of "' + desc + '"...'
  result = block.call
  puts '..."' + desc + '" finshed, returning: ' + result.to_s
end

log ' the outer (first) block' do
   log 'the first inner block' do
     1**1 + 2**2
   end
   log 'the second inner block' do
   puts 'this text is from the second inner block'
   end
   5 == 10
end
