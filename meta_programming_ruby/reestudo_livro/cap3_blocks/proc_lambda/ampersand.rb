def math(a, b)
  yield(a, b)
end

def teach_math(a, b, &operation)
  puts operation.class
  puts operation.call(a, b)

  puts "Let's do the math:"
  puts math(a, b, &operation)
end

teach_math(1, 3) { |a, b| a + b }