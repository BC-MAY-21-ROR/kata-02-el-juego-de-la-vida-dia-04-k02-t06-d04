# frozen_string_literal: true

require_relative 'cell'
require_relative 'grid'
require_relative 'display'

#clase main
class Main
  def initialize
    puts('Ancho de la matriz: ')
    @width_grid = gets.chomp.to_i
    puts('Largo de la matriz: ')
    @long_grid = gets.chomp.to_i

    @grid = Grid.new(@width_grid, @long_grid)
    @grid.create_matrix

    print_display
  end

  def check_neighbours
    (1..@long_grid - 2).each do |i|
      (1..@width_grid - 2).each do |j|
        status = @matrix[i][j]
        cell = Cell.new(status, arround_cell(i, j))
        cell.change_state
        @matrix[i][j] = cell.new_status
      end
    end
  end

  def arround_cell(long, width)
    neighbours_live = 0
    neighbours_live += 1 if @matrix[long - 1][width - 1] == ' * '
    neighbours_live += 1 if @matrix[long - 1][width] == ' * '
    neighbours_live += 1 if @matrix[long - 1][width + 1] == ' * '
    neighbours_live += 1 if @matrix[long][width - 1] == ' * '
    neighbours_live += 1 if @matrix[long][width + 1] == ' * '
    neighbours_live += 1 if @matrix[long + 1][width - 1] == ' * '
    neighbours_live += 1 if @matrix[long + 1][width] == ' * '
    neighbours_live += 1 if @matrix[long + 1][width + 1] == ' * '
    neighbours_live
  end

  def print_display
    display = Display.new(@grid.matrix, @long_grid, @width_grid, 1)
    display.prints

    @matrix = @grid.matrix

    check_neighbours

    display2 = Display.new(@matrix, @long_grid, @width_grid, 2)
    display2.prints
  end
end

main = Main.new
