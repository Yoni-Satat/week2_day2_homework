require_relative('../bear.rb')
require_relative('../river.rb')
require_relative('../fish.rb')
require('minitest/autorun')
require('minitest/rg')

class TestBear < MiniTest::Test

  def setup
    @bear = Bear.new("Yogi")

    @fish1 = Fish.new('salmon')
    @fish2 = Fish.new('haddock')
    @fish3 = Fish.new('trout')

    @river_fish = [@fish1, @fish2, @fish3]
    @river = River.new('Amazon', @river_fish)
  end

  def test_bear_name
    assert_equal("Yogi", @bear.name)
  end

  def test_bear_stomach
    assert_equal(0, @bear.bear_stomach.length)
  end

  def test_bear_can_take_fish_river
    # bear need river
    # bear take 1 fish
    # remove fish from river
    # put fish in bear stomach
    @bear.take_fish(@river)
    assert_equal(1, @bear.bear_stomach.length)
  end
end
