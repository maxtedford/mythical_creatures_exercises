class Werewolf

  def initialize(name, location="London")
    @name = name
    @location = location
    @human = true
    @changes_count = 0
  end

  def name
    @name
  end

  def location
    @location
  end

  def human?
    @human
  end

  def change!
    if @changes_count < 5
      @human = !@human
      record_change
    end
  end

  def record_change
    @changes_count +=1
  end

  def werewolf?
    !human?
  end
end
