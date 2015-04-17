require_relative File.expand_path(File.dirname(__FILE__) + '/../data_source.rb')

#puts File.dirname(__FILE__)
#puts File.expand_path(File.dirname(__FILE__) + '/../data_source.rb')

class Computer
  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
    @data_source.methods.grep(/^get_(.*)_info$/) { Computer.define_component $1 }
  end

  def self.define_component(name)
    define_method(name) do
      info = @data_source.send "get_#{name}_info", @id
      price = @data_source.send "get_#{name}_price", @id
      result = "#{name.to_s.capitalize}: #{info} ($#{price})"
      return "* #{result}" if price >= 100
      result
    end
  end

end

require 'test/unit'

class ComputerTest < Test::Unit::TestCase

  def setup
    @computer = Computer.new(1, DS.new)
  end

  def test_mouse
    assert_equal 'Mouse: Dual Optical ($40)' , @computer.mouse
  end

  def test_cpu
    assert_equal '* Cpu: 2.16 Ghz ($220)' , @computer.cpu
  end

  def test_keyboard
    assert_equal 'Keyboard: Standard UK ($20)' , @computer.keyboard
  end
end