require 'pry-nav'

class CalculatorString
	def self.add(value)
    return 0 if value.empty?

    # Split by commas and new lines
    parts = value.split(/[,\n]/)

    # Convert parts to integers and sum them up
    sum = parts.map(&:to_i).sum
  end
end
