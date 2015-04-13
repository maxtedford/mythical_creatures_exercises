class Centaur
attr_reader :name, :breed

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @effort_count = 0
  end

  def shoot
    @effort_count += 1
    if cranky? || laying?
      "NO!"
    else
      "Twang!!!"
    end
  end

  def run
    @effort_count += 1
    if cranky? || laying?
      "NO!"
    else
      "Clop clop clop clop!!!"
    end

  end

  def cranky?
    if @effort_count >= 3
      !@cranky
    else
      @cranky
    end
  end

  def standing?
    @standing
  end

  def stand_up
    @standing = true
  end

  def sleep
    @effort_count = 0
    if standing?
      "NO!"
    end
  end

  def lay_down
    @standing = false
  end

  def laying?
    !@standing
  end
end
