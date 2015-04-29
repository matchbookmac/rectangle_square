require('rspec')
require('pry')
require('rectangle')

describe('Rectangle') do
  describe('#square?') do
    it('will return false if the rectangle is not a square') do
      test_rectangle = Rectangle.new(40, 30)
      expect(test_rectangle.square?()).to(eq(false))
    end
    it('will return true if the rectangle is a square') do
      test_rectangle = Rectangle.new(30, 30)
      expect(test_rectangle.square?()).to(eq(true))
    end
  end

  describe('#area') do
    it('will return the area of the rectangle') do
      test_rectangle = Rectangle.new(40, 30)
      expect(test_rectangle.area()).to(eq(1200))
    end
  end
end
