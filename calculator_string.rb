require 'pry-nav'

class CalculatorString
	def self.add(value)
    return 0 if value.empty?

    val = value.split(',')

    sum = val.map(&:to_i).sum
  end
end
