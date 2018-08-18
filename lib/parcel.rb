class Parcel
  def initialize(length, width, height, weight)
    @length = length
    @width = width
    @height = height
  end

  def volume
    @length * @width * @height
  end
end
