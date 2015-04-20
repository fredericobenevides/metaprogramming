p = Proc.new { |a, b| [a, b]}
p p.arity # 2

p p.call 1, 2, 3 # [1, 2]
p p.call 1       # [1, nil]

puts "\n"
l = lambda { |a, b| [a, b]}
p l.arity # 2
# p l.call 1, 2, 3 # erro
