require 'rspec'
require_relative '../../string_calculator_v2/string_calculator.rb'

RSpec.describe Calculator do
  describe '.add' do
    context 'with empty string' do
      it 'returns 0' do
        expect(Calculator.add("")).to eq(0)
      end
    end

    context 'with single number' do
      it 'returns that number' do
        expect(Calculator.add("5")).to eq(5)
      end
    end

    context 'with two digits' do
      it 'returns their sum' do
        expect(Calculator.add("5,6")).to eq(11)
      end
    end

    context 'with negative digits' do
      it 'raises an exception' do
        expect { Calculator.add("1,-2,3") }.to raise_error(InvalidInput, "cannot accept negative numbers: -2")
      end
    end
  end
end
