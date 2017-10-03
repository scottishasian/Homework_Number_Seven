require_relative( '../river.rb' )
require_relative( '../fish.rb' )
require( 'minitest/autorun')
require( 'minitest/rg' )

class TestRiver < MiniTest::Test

  def setup
    @river = River.new("Amazon")
    @fish = Fish.new("Salmon")
    @fish1 = Fish.new("Pike")
  end

  def test_river_name
    assert_equal("Amazon", @river.name())
  end

  def test_fish_count
    assert_equal(0, @river.fish_count)
  end

  def test_add_fish
    @river.add_fish(@fish)
    assert_equal(1,@river.fish_count)
  end


end
