require 'rspec'
require_relative '../../string_calculator_v2/string_calculator.rb'

RSpec.describe Calculator do
  describe '.add' do
    context 'with empty string' do
      it 'returns 0' do
        expect(Calculator.add("")).to eq(0)
      end
    end
  end
end
