# Blank Slate é uma classe que o mínimo possível de métodos. BasicObject é uma classe desse tipo.
# Isso evita colisão

require_relative 'data_source'

class Computer < BasicObject

  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
  end

  def method_missing(name)
    super if !@data_source.respond_to?("get_#{name}_info")
    info = @data_source.send "get_#{name}_info", @id
    price = @data_source.send "get_#{name}_price", @id

    result = "#{name.capitalize}: #{info} ($#{price})"
    return "* #{result}" if price >= 100
    result
  end

  def respond_to_missing?(method, include_private = false)
    @data_source.respond_to?("get_#{method}_info") || super
  end

end

my_computer = Computer.new(42, DS.new)
puts my_computer.cpu # * Cpu: 2.16 Ghz ($220)

puts my_computer.respond_to? :mouse
