# frozen_string_literal: true
require './grid'
RSpec.describe Grid do
    matriz = Grid.new(4, 4) # Definir una variable { mandarle los parametros iniciales }
    matriz.create_matrix
    m = matriz.matrix
    context 'validar creacion de matriz' do
        it 'creacion' do
            expect(m) != []
        end
    end
    context 'validar bordes muertos' do
        it 'Muerto' do
            4.times do |i|
                4.times do |x|
                    next unless i.zero? || i == 4 || x.zero? || x == 4
                    expect(m[i][x]).to eq ' . '
                end
            end
        end
    end
end
