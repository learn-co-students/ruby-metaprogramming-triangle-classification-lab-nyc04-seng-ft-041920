class Triangle
  attr_accessor :x, :y, :z
  def initialize(x,y,z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    self.valid_triangle?

    if self.x == self.y && self.y == self.z
      :equilateral
    elsif self.x == self.y || self.y == self.z || self.z == self.x
      :isosceles
    else
      :scalene
    end
  end

  def valid_triangle?
      x = self.x
      y = self.y
      z = self.z

      if x > 0 && y > 0 && z > 0
            if ( x+y <= z) or (x + z <= y) or (y + z <= x)
              raise TriangleError
            else
              true
            end
      else
            raise TriangleError
      end
  end

  class TriangleError < StandardError
    # triangle error code
  end

end
