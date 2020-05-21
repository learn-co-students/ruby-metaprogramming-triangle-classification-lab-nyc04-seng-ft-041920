class Triangle

  attr_accessor :first, :second, :third

  def initialize(attributes)
    attributes.each {|key, val| self.send(("#{key}="), val)}
  end

  def check
    arr = [first, second, third].sort
    if arr.any?(&:negative?) || arr.include?(0)
      raise TriangleError
    elsif arr[0] + arr[1] <= arr[2]
      raise TriangleError
    else
      return arr
    end
  end


  def kind
    case check.uniq.count
    when 1
      :equilateral
    when 2
      :isosceles
    when 3
      :scalene
    end
  end

  class TriangleError < StandardError
    puts "Illegal :("
  end
end
