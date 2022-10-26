# Triangle#kind returns :equilateral when all sides are equal
# Triangle#kind returns :isosceles when two sides are equal
# Triangle#kind returns :scalene when no sides are equal
# Triangle#kind raises an error for triangles with no size
# Triangle#kind raises an error for triangles with no size
# Triangle#kind raises an error for triangles violating triangle inequality


class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if a <= 0 || b <= 0 || c <= 0
      raise TriangleError
    elsif a + b <= c || a + c <= b || b + c <= a
      raise TriangleError
    elsif a == b && b == c
      :equilateral
    elsif a == b || a == c || b == c
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
  end
end

