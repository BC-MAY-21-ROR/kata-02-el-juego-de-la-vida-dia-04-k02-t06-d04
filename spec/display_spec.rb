# frozen_string_literal: true

require './display'

RSpec.describe Display do
  mtriz = [[' * ', ' . ', ' . ', ' . '],
           [' * ', ' . ', ' . ', ' . '],
           [' * ', ' . ', ' . ', ' . '],
           [' * ', ' . ', ' . ', ' . ']]

  let(:display) { Display.new(mtriz, 4, 4, 1) }
  let(:displai) { display.prints }

  context 'validar creacion de matriz' do
    it 'creacion' do
      expect(displai) != ''
    end
  end
end
