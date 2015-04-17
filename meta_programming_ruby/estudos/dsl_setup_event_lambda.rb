lambda {
  @events = {}
  @setups = []

  Kernel.send :define_method, :event do |name, &block|
    @events[name] = block
  end

  Kernel.send :define_method, :setup do |&block|
    @setups << block
  end

  Kernel.send :define_method, :each_event do |&block|
    @events.each_pair do |nome, evento|
      block.call nome, evento
    end
  end

  Kernel.send :define_method, :each_setup do |&block|
    @setups.each do |setup|
      block.call setup
    end
  end

}.call


@events = {}
def event(name, &block)
 @events[name] = block
end

@setups = []
def setup(&block)
  @setups << block
end



event "valor1 < valor2" do
  @valor1 < @valor2
end

event "valor1 > valor2" do
  @valor1 > @valor2
end


setup do
  puts "Carregando valor1"
  @valor1 = 100
end

setup do
  puts "Carregando valor2"
  @valor2 = 200
end


def executa
  each_event do |name, event|

    obj = Object.new
    each_setup do |setup|
      obj.instance_eval &setup
    end

    puts "ALERT: #{name}" if obj.instance_eval &event
  end
end

executa
