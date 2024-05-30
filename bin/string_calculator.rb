require_relative '/Users/supriya/string_calculator_v2/string_calculator.rb'

puts "Enter numbers to add (or 'exit' to quit):"

loop do
    print "> "
    input = gets.chomp
    break if input.downcase == 'exit'

    begin
      result = Calculator.add(input)


      puts "Result: #{result}"
    rescue => e
      puts "Error: #{e.message}"
    end
  end
