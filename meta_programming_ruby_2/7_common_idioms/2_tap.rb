p ['a', 'b', 'c'].push('d').shift.upcase.next # => "B"


p ['a', 'b', 'c'].push('d').shift.tap {|x| puts x }.upcase.next


# class Object
#   def tap
#     yield self
#     self
#   end
# end