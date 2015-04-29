require('sinatra')
require('sinatra/reloader')
require('./lib/rectangle')
require('./lib/cube')
also_reload('lib/**/*.rb')

get ('/') do
  erb(:index)
end

get ('/result') do
  @length = params.fetch('length').to_i()
  @width = params.fetch('width').to_i()
  @square = Rectangle.new(@length, @width)
  @cube = Cube.new(@square)
  erb(:result)
end
