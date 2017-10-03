require_relative( '../river.rb' )
require( 'minitest/autorun')
require( 'minitest/rg' )

class TestRiver < MiniTest::Test

  def setup
    @river = River.new("Amazon")
  end

  def test_river_name
    assert_equal("Amazon", @river.name())
  end

end
