class Cube
  define_method(:initialize) do |square|
    @square = square
  end

  define_method(:volume) do
    @square.length().**3
  end
end
