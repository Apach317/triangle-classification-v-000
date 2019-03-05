class Triangle
  attr_accessor :sides, :equilateral, :isosceles, :scalene
  
  def initialization(S1, S2, S3)
    @sides = []
    @sides << S1
    @sides << S2
    @sides << S3
  end

  def kind
    if (sides[0] >= sides[1] + sides[2]) || (sides[1] >= sides[0] + sides[2]) || (sides[2] >= sides[0] + sides[1])
      raise TriangleError
    else
      if sides.uniq.count == 1
        :equilateral
      elsif sides.uniq.count == 2
        :isosceles
      else sides.uniq.count == 3
        :scalene
      end
    end
  end

  class TriangleError < StandardError

    def message
      "No, No, No! Thats not a Triangle"
    end
  end

    
end
