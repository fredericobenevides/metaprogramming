def double(callable_object)
  callable_object.call * 2
end

def another_double
  p = Proc.new { return 10 }
  result = p.call
  return result * 2 # unreachable code!
end

l = lambda { return 10 }
p double(l)

another_double

p = Proc.new { return 20 }
# this fails with a LocalJumpError:
# p double(p)

p = proc { return 20 }
p double(p)
