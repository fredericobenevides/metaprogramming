v1 = 1

class MyClass
  v2 = 2
  puts local_variables

  def my_method
    v3 = 3
    puts local_variables
  end

  puts local_variables
end

puts local_variables