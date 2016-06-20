def log desc, &block
  puts "#{$indent}Start of" + desc + '...'
  $indent = $indent + '  '
  result = block.call
  $indent = $indent.chomp('  ')
  puts "#{$indent}..." + desc + ' finshed, returning: ' + result.to_s
end

$indent = ''

log ' the outer (first) block' do
   log ' the first inner block' do
     log ' the inner blocks child' do
     1**1 + 2**2
   end
  end

   log ' the second inner block' do
   puts ' this text is from the second inner block'
   end
   5 == 10
end
