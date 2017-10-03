require_relative( '../river.rb' )
require_relative( '../fish.rb' )
require_relative( '../bear.rb' )
require( 'minitest/autorun')
require( 'minitest/rg' )

class TestRiver < MiniTest::Test

  def setup
    @river = River.new("Amazon")
    @fish = Fish.new("Salmon")
    @fish1 = Fish.new("Pike")
    @bear = Bear.new("Yogi")
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

  def test_bear_takes_fish_from_river
    river = @river.add_fish(@fish)
    food = @river.fish_count
    hungry_bear = @bear.bear_stomach
    result = @river.bear_takes_fish_from_river(food, hungry_bear, river)
    assert_equal(0, result)
  end



end
