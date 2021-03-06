class Transportation
  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Transportation
  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Transportation
  def ring_bell
    puts "Ring ring!"
  end
end


# bike1 = Bike.new
# bike1.accelerate
# bike1.brake
# bike1.ring_bell

# car1 = Car.new
# car1.accelerate
# car1.brake
# car1.honk_horn
