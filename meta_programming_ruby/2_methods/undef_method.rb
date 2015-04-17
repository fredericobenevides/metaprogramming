class Pai
  def ola
    puts "ola pai"
  end
end

class Filho < Pai
  def ola
    puts "ola filho"
  end

  undef_method 'ola'
  #remove_method 'ola'
end

filho = Filho.new.ola
