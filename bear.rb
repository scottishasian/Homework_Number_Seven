class Bear
  attr_reader :name, :stomach

  def initialize(name)
    @name = name
    @stomach = []
  end

  def bear_stomach
    if @stomach.count == 0
      return "empty"
    elsif @stomach.count == 1
      return "full"
    end
  end

  def eat_fish(fish)
    if bear_stomach == "empty"
      @stomach << fish
    end
  end


end
