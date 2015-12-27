# Lattice paths
# Problem 15
class Puzzle
  attr_reader :size

  def initialize(user_size)
    @size = user_size + 1
    @num_routes = Array.new(size) { Array.new(size )}
    @num_routes[size - 1][size - 1] = 1
  end

  # calculates routes to get to bottom right corner from point x,y
  def num_routes(x,y)
    unless @num_routes[x][y]
      if (x == size - 1) # right side
        @num_routes[x][y] = num_routes(x,y+1)
      elsif (y == size - 1) # bottom side
        @num_routes[x][y] = num_routes(x+1,y)
      else
        @num_routes[x][y] = num_routes(x+1,y) + num_routes(x,y+1)
      end
    end
    @num_routes[x][y]
  end
end

my_puzzle = Puzzle.new(20)
p my_puzzle.num_routes(0,0)
