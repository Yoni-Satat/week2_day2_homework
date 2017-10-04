class Bear
  attr_reader :name, :bear_stomach
  def initialize(name)
    @name = name
    @bear_stomach = []
  end
  def take_fish(river)
    @bear_stomach.push(river.river_fish[0])
    river.river_fish.delete_at(0)

  # bear need river
  # bear take 1 fish
  # remove fish from river
  # put fish in bear stomach
  end

end
