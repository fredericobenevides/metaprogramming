names = ['bob', 'bill', 'heather']
p names.map {|name| name.capitalize }

# class Symbol
#   def to_proc
#     Proc.new { |x| x.send(self) }
#   end
# end

p names.map(&:capitalize)

# without Symbol#to_proc:
p [1, 2, 5].inject(0) {|memo, obj| memo + obj } # => 8

# with Symbol#to_proc:
p [1, 2, 5].inject(0, &:+) # => 8

