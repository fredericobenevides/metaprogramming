@setups = []
@setupsParam = []

def setup(&value)
  @setups << value
end

def setupParam(name)
  @setupsParam << name
end

setupParam("teste1")
obj = Object.new
@setupsParam.each do |setup|
  obj.instance_eval do 
    setup
  end
end

setup do 
  puts "teste1"
  @v = 1
end

env = Object.new
@setups.each do |setup|
  env.instance_eval &setup
end