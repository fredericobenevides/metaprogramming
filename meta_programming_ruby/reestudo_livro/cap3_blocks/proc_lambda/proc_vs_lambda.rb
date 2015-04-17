def double(callable_object)
  callable_object.call * 2
end
l = lambda { return 10 }
puts double(l) # => 20

def another_double
  p = Proc.new { return 10 }
  result = p.call
  return result * 2 # unreachable code!
end
puts another_double # => 10

