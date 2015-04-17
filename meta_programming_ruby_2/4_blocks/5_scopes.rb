# Quando se entra em um novo scopo, os bindings anteriores são substituidos pelos bindings atuais.
# ou seja, ao entrar no MyClass, estará entrando em um novo scope, e o v1 não será mais visualizado.

# Há exatamente 3 locais que o programa abandona o scope anterior para criar uma nova. (Conhecido como Scope Gates)
# 1 - Class definitions
# 2 - Module definitions
# 3 - Methods


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

obj = MyClass.new

puts "\nchamando primeira vez"
obj.my_method

puts "\nchamando segunda vez"
obj.my_method

puts "\n"
puts local_variables