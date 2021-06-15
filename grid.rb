# frozen_string_literal: true

require_relative 'display'
# clase que crea la matriz
class Grid
  def initialize(width, long)
    @width = width
    @long = long
    @matriz = []
  end

  def matrix
    @matriz
  end

  def create_matrix
    @long.times do |i|
      @matriz.push([])
      @width.times do |_j|
        @matriz[i].push([' . ', ' * '].sample)
      end
    end

    kill_cells_in_borders
  end

  def kill_cells_in_borders
    (0..@long - 1).each do |i|
      (0..@width - 1).each do |x|
        @matriz[i][x] = ' . ' if i.zero? || (i == @long - 1) || x.zero? || (x == @width - 1)
      end
    end
  end
end
