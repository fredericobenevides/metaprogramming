obj = Object.new
eigenclass = class << obj
  self
end

puts eigenclass.class

def obj.my_singleton_method; end
puts eigenclass.instance_methods.grep(/my_/)

