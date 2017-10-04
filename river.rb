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

  def river_has_fish(result)
    if result.count >= 1
      return true
    else
      return false
    end
  end

  def bear_takes_fish_from_river(fish, bear, river)
    if fish >= 1 && bear == "empty"
      river.pop()
      return fish_count
    else
      puts "error"
    end
  end


end
