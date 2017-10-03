require_relative('../fish.rb')
require('minitest/autorun')
require('minitest/rg')

class TestFish < MiniTest::Test

  def setup
    @fish = Fish.new("Yoni")
  end

  def test_fish_name
    assert_equal("Yoni", @fish.name)
  end
end
