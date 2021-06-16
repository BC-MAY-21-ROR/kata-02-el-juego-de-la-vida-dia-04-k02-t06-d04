require './cell.rb'

RSpec.describe Cell do
    state = ' * '
    cell = Cell.new(state, 4)
    c = cell.change_state

    context('Pruebas a la clase Celula') do
        it('Pruebas al metodo change_state') do
            print c
            expect(c) == " . "
        end
    end
end      