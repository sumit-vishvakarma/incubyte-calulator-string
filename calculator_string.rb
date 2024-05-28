require 'pry-nav'

class CalculatorString
	def self.add(value)
    return 0 if value.empty?

    # Split by commas and new lines
    parts = value.split(/[,\n]/)
		sum = 0

		parts.map(&:to_i).each do |num|
      if num.negative?
        raise "negative numbers not allowed please give positive number #{num}"
      else
        sum += num
      end
    end
    sum
  end
end
