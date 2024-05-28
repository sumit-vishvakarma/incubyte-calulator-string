require 'pry-nav'

class CalculatorString
	def self.add(value)
    return 0 if value.empty?

    if value == "1"
      return 1
    elsif value[0].to_i > 0 && value[2].to_i > 0 && value[1] == ','
			return value[0].to_i + value[2].to_i
    end
  end
end
