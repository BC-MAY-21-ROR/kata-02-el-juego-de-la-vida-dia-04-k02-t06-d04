# frozen_string_literal: true

# clase que verifica si la celula vive o muere
class Cell
  def initialize(status, neighbours)
    @status = status
    @neighbours = neighbours
  end

  def change_state
    neighbours_lives = @neighbours

    # Condiciones
    # celula viva con mas de 3 vecinos vivos muere
    @status = ' . ' if neighbours_lives > 3 && @status == ' * '

    # celula viva con menor de dos vecinos vivos muere
    @status = ' . ' if neighbours_lives < 2 && @status == ' * '

    # celula muerta con 3 vecinos vivos  revive
    @status = ' * ' if neighbours_lives == 3 && @status == ' . '
  end

  def new_status
    @status
  end
end
