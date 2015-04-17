# Flat scope. Permite acessar scopos criados sem haver necessidade de criar um novo scopo.

my_var = "Success"

MyClass = Class.new do
  puts "#{my_var} in the class definition!"

  define_method :my_method do
    puts "#{my_var} in the method"
  end
end

MyClass.new.my_method