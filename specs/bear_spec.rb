require_relative( '../bear.rb' )
require_relative( '../fish.rb' )
require( 'minitest/autorun')
require( 'minitest/rg' )

class TestRiver < MiniTest::Test

  def setup
    @bear1 = Bear.new("Yogi")
    @fish = Fish.new("Cod")
  end

  def test_bear_name
    assert_equal("Yogi", @bear1.name())
  end

  def test_bear_stomach
    assert_equal("empty", @bear1.bear_stomach)
  end

  def test_eat_fish
    result = @bear1.eat_fish(@fish)
    assert_equal("full", @bear1.bear_stomach)
  end

  def test_roar
    assert_equal("ROAR!", @bear1.roar)
  end


end
