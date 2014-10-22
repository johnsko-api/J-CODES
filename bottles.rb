bottles = 99

while bottles > 1
  puts bottles.to_s + ' bottles of beer on the wall'
  puts bottles.to_s + ' bottles of beer'
  bottles = bottles - 1
if bottles == 1
  puts 'takes one down pass it around'
  puts bottles.to_s + ' bottle of beer on the wall'
  puts ''
  puts bottles.to_s + ' bottle of beer on the wall'
  puts bottles.to_s + ' bottle of beer'
  puts 'takes one down pass it around'
  bottles = bottles - 1
  puts bottles.to_s + ' bottles of beer on the wall'
else
  puts  'takes one down pass it around'
  puts bottles.to_s + ' bottles of beer on the wall'
  puts ''

end
end
