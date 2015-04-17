names = ['bob', 'bill', 'heather']
p names.map {|name| name.capitalize}

class Symbol
  def to_proc
    Proc.new {|x| x.send(self)}
  end
end

names = ['bob', 'bill', 'heather']
#p names.map(&:capitalize.to_proc)
p names.map(&:capitalize)