require './grid.rb'

RSpec.describe Grid do

    let(:matriz) {Grid.new(4, 4)} #Definir una variable { mandarle los parametros iniciales }
    let(:matrix) {matriz.create_matrix}  

    context'validar creacion de matriz' do
        it'creacion' do
            expect(matrix) != []
        end
    end
end