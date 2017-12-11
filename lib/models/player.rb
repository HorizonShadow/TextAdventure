module TextAdventure
  class Player
    include DataMapper::Resource

    property :id, Serial
  end
end