class Triangle
  attr_accessor :side1, :side2, :side3



  class TriangleError < StandardError
    def message
      "fails to meet the mathematical requirements of a triangle."
    end
  end

  def kind
    if side1 + side2 <= side3 || side2 + side3 <= 1 || side3 + side1 <= side2 || side1 == 0 || side2 == 0 || side3 == 0
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    else
      if side1 == side2 && side2 == side3
        return :equilateral
      elsif side1 == side2 || side1 == side3 || side2 == side3
        return :isosceles
      else
        return :scalene
      end
    end
  end
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    kind 
  end
end
