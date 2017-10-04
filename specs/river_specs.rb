require_relative('../river.rb')
require_relative('../fish.rb')
require('minitest/autorun')
require('minitest/rg')

class TestRiver < MiniTest::Test
  def setup
    @fish1 = Fish.new('salmon')
    @fish2 = Fish.new('haddock')
    @fish3 = Fish.new('trout')

    @river_fish = [@fish1, @fish2, @fish3]
    @river = River.new('Amazon', @river_fish)
  end

  def test_river_name
    assert_equal("Amazon", @river.name)
  end

  def test_fish_in_river
    assert_equal(3, @river.river_fish.length)
  end
end
