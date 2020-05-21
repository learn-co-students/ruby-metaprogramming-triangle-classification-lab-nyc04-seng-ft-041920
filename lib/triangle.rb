class Triangle
  attr_reader :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def check_size?
    self.side1 <= 0 || self.side2 <= 0 || self.side3 <= 0
  end

  def determine_type
    if self.side1 == self.side2 && self.side1 == self.side3
      return :equilateral
    elsif self.side1 == self.side2 && self.side1 != self.side3
      return :isosceles
    elsif self.side2 == self.side3 && self.side2 != self.side1
      return :isosceles
    elsif self.side1 == self.side3 && self.side2 != self.side1
      return :isosceles
    else
      return :scalene
    end
  end

  def inequality?
    self.side1 + self.side2 <= self.side3 || self.side1 + self.side3 <= self.side2 || self.side2 + self.side3 <= self.side1
  end

  def kind
    if self.check_size?
      raise TriangleError
    elsif self.inequality?
      raise TriangleError
    else
      self.determine_type
    end
  end

  class TriangleError < StandardError
    def message
      "not equilateral"
    end
  end
end
