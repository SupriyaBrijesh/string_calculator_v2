class InvalidInput < StandardError; end

class Calculator
  DIGITS_REGEXP = /-?\d+/

  def self.add(str)
    numbers = str.scan(DIGITS_REGEXP).map(&:to_i)

    negative_numbers = numbers.select { |n| n < 0 }
    unless negative_numbers.empty?
      raise InvalidInput, "cannot accept negative numbers: #{negative_numbers.join(', ')}"
    end

    numbers.sum
  end
end
