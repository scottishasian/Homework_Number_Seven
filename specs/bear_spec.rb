require_relative( '../bear.rb' )
require( 'minitest/autorun')
require( 'minitest/rg' )

class TestRiver < MiniTest::Test

  def setup
    @bear1 = Bear.new("Yogi")
  end

  def test_river_name
    assert_equal("Yogi", @bear1.name())
  end

end
