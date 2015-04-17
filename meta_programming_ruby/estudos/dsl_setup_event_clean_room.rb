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
  @events.each_pair do |name, event|

    obj = Object.new
    @setups.each do |setup|
      obj.instance_eval &setup      
    end

    puts "ALERT: #{name}" if obj.instance_eval &event
  end
end

executa
