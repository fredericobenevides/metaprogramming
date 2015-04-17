class Lawyer; end

nick = Lawyer.new
#nick.talk_simple     # NoMethodError: undefined method ‘talk_simple' for #<Lawyer:0x3c848> [...]
nick.send :method_missing, :my_method