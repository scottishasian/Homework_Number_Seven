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


end
