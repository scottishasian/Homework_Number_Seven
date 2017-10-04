require_relative( '../bear.rb' )
require_relative( '../fish.rb' )
require_relative( '../river.rb' )
require( 'minitest/autorun')
require( 'minitest/rg' )

class TestRiver < MiniTest::Test

  def setup
    @bear1 = Bear.new("Yogi")
    @fish = Fish.new("Cod")
    @river = River.new("Amazon")
  end

  def test_bear_name
    assert_equal("Yogi", @bear1.name())
  end

  def test_bear_stomach
    assert_equal("empty", @bear1.bear_stomach)
  end

  def test_eat_fish
    result = @river.add_fish(@fish)
    food = @river.river_has_fish(result)
    @bear1.eat_fish(food, @fish)
    assert_equal("full", @bear1.bear_stomach)
  end

  def test_roar
    assert_equal("ROAR!", @bear1.roar)
  end


end
