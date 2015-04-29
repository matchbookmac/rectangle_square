require('pry')
require('rectangle')
require('cube')

describe('Cube') do
  describe('#volume') do
    it('will return the volume of a cube') do
      test_rectangle = Rectangle.new(30, 30)
      test_cube = Cube.new(test_rectangle)
      expect(test_cube.volume()).to(eq(27000))
    end
  end
end
