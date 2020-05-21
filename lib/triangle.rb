class Triangle

  attr_reader :left_right, :right_bottom, :bottom_left
  attr_accessor :left, :right, :bottom
  # write code here

  def initialize(left, right, bottom)
    @left = left
    @right = right
    @bottom = bottom

    # Checks if Integer values are the same and then assigns Boolean
    @left_right = left == right           # Can't use for integer checks durr
    @right_bottom = right == bottom
    @bottom_left = bottom == left
  end



  def kind 
    # triangle_total = self.left + self.right + self.bottom

    if triangle_inequality_check
      kind_check
    end

  end

  def kind_check
    if left_right && right_bottom
      :equilateral
    elsif left_right || right_bottom || bottom_left
      :isosceles
    else
      :scalene
    end
  end

  def triangle_inequality_check
    if left == 0 && bottom == 0 && right == 0
      raise TriangleError
    elsif left < 0 || bottom < 0 || right < 0
      raise TriangleError
    elsif left + right <= bottom || bottom + left <= right || right + bottom <= left
      raise TriangleError
    else
      true
    end
  end

  class TriangleError < StandardError

  end
end
