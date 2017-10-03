require_relative( '../bear.rb' )
require( 'minitest/autorun')
require( 'minitest/rg' )

class TestRiver < MiniTest::Test

  def setup
    @bear1 = Bear.new("Yogi")
  end

  def test_bear_name
    assert_equal("Yogi", @bear1.name())
  end

  def test_bear_stomach
    assert_equal("empty", @bear1.bear_stomach)
  end


end
