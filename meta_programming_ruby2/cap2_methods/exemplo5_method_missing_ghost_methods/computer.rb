require_relative File.expand_path(File.dirname(__FILE__) + '/../data_source.rb')

#puts File.dirname(__FILE__)
#puts File.expand_path(File.dirname(__FILE__) + '/../data_source.rb')

class Computer
  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
  end

  def respond_to?(method)
    @data_source.respond_to?("get_#{method}_info") || super
  end

  def method_missing(name, *args)
    super if !@data_source.respond_to?("get_#{name}_info")
    info = @data_source.send "get_#{name}_info", @id
    price = @data_source.send "get_#{name}_price", @id
    result = "#{name.to_s.capitalize}: #{info} ($#{price})"
    return "* #{result}" if price >= 100
    result
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