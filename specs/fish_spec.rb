require_relative( '../fish.rb' )
require( 'minitest/autorun')
require( 'minitest/rg' )

class TestRiver < MiniTest::Test

  def setup
    @fish1 = Fish.new("Salmon")
  end

  def test_river_name
    assert_equal("Salmon", @fish1.name())
  end

end
