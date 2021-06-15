# frozen_string_literal: true

# clase que se encarga de imprimir las matrices
class Display
  def initialize(matrix, long, width, generation)
    @matrix = matrix
    @long = long
    @width = width
    @generation = generation
  end

  def prints
    puts "Generation #{@generation}"
    long = @long - 1
    width = @width - 1
    (0..long).each do |i|
      cadena = ''
      (0..width).each do |x|
        cadena += @matrix[i][x]
      end
      puts cadena
    end
  end
end
