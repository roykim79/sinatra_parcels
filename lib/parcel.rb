class Parcel
  def initialize(length, width, height, weight)
    @volume = length * width * height
    @weight = weight
  end

  def volume
    @volume
  end

  def volume_cost
    cost_per_cubic_inch = 1.5
    @volume * cost_per_cubic_inch
  end

  def weight_cost
    cost_per_ounce = 1.25
    @weight * cost_per_ounce
  end

  def cost_to_ship
    volume_cost > weight_cost ? volume_cost : weight_cost
  end
end
