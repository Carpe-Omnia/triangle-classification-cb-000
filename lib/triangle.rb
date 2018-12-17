class Triangle
  attr_accessor :side1, :side2, :side3
  def initialize(side1, side2, side3)
    if side1 + side2 <= side3 || side2 + side3 <= 1 || side3 + side1 <= side2 || side1 = 0 || side2 = 0 || side3 = 0
      begin
        raise TriangleError
      rescue TriangleError => error 
        puts error.message  
end
