class Bag

  def initialize
    @bag = []
  end

  def empty?
    @bag.empty?
  end

  def count
    @bag.count
  end

  def candies
    @bag
  end

  def <<(candy)
    @bag.push(candy)
  end

  def contains?(candy)
    @bag.any?{|each| each.type == candy}
  end

  def grab(candy)
    x = @bag.detect{|name, sugar| name if name.type == candy}
    @bag.delete(x)
  end

  def take(number = 1)
    @bag.pop(number)
  end

end
