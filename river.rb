require_relative( 'bear.rb' )

class River
  attr_reader :name, :fish_number

  def initialize(name)
    @name = name
    @fish_number = []
  end

  def fish_count
    return @fish_number.count()
  end

  def add_fish(more_fish)
    @fish_number << more_fish
  end

  def bear_takes_fish_from_river(fish, bear)
    if fish >= 1 && bear == "empty"
      @fishnumber.pop()
      return fish_count
    end
  end


end
