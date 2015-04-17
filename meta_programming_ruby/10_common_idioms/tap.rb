p ['a', 'b', 'c'].push('d').shift.upcase.next

puts  "\n\n*******************************"
temp = ['a', 'b', 'c'].push('d').shift
puts temp
p x = temp.upcase.next

puts  "\n\n*******************************"
p ['a', 'b', 'c'].push('d').shift.tap {|x| puts x}.upcase.next