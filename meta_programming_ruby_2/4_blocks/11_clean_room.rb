# Clean Room é apenas um ambiente onde permite reproduzir os blocos.
# A idéia do clean room é possuir poucos metodos or variáveis, por isso o BasicObject serve para ser um bom CleanRoom

class CleanRoom
  def current_temperature

  end
end

clean_room = CleanRoom.new
clean_room.instance_eval do
  if current_temperature < 20
    # TODO: wear jacket
  end
end