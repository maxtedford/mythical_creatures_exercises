class TrickOrTreater

  def initialize(costume)
    @costume = costume
    @sugar_level = 0
    @bag = Bag.new
  end

  def dressed_up_as
    @costume.style
  end

  def bag
    @bag
  end

  def empty?
    @bag.empty?
  end

  def has_candy?
    !@bag.empty?
  end

  def candy_count
    @bag.count
  end

  def eat(number = 1)
    x = bag.take(number)
    x.each {|el| @sugar_level += el.sugar}
  end

  def sugar_level
    @sugar_level
  end

end
