require 'test/unit'

class Class
  def attr_checked(attribute, &validation)
    define_method "#{attribute}=" do |value|
      #raise 'Invalid attribute' unless validation.call(value)
      raise 'Invalid attribute' unless yield value
      instance_variable_set "@#{attribute}", value
    end
    
    define_method attribute do
      instance_variable_get "@#{attribute}"
    end
  end
end

class Person
  attr_checked :age do |v|
    v >= 18
  end
end

class TestCheckedAttribute < Test::Unit::TestCase
  def setup
    @bob = Person.new
  end
  
  def test_accepts_valid_values
    @bob.age = 20
    assert_equal 20, @bob.age
  end
  
  def test_accepts_invalid_values
    assert_raises RuntimeError, 'Invalid attribute' do
      @bob.age = 17
    end
  end
end

def add_checked_attribute(clazz, attribute, &validation)
  clazz.class_eval do
    define_method "#{attribute}=" do |value|
      #raise 'Invalid attribute' unless validation.call(value)
      raise 'Invalid attribute' unless yield value
      instance_variable_set "@#{attribute}", value
    end
    
    define_method attribute do
      instance_variable_get "@#{attribute}"
    end
  end
end