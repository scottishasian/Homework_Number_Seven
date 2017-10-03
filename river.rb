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

end
