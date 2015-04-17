class C
  @@v = 1
end

class D < C
  def my_method; @@v; end
end

p D.new.my_method

puts "\n\n*********************\n\n"

@@t = 1
class MyClass
  @@t = 2
end
p @@t