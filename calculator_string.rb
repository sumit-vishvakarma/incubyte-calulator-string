require 'pry-nav'

class CalculatorString
	def self.add(value)
    return 0 if value.empty?

		if value.start_with?("//")
      # Extract custom delimiter
      delimiter, numbers = custom_delimiter(value)
      # Split numbers using the custom delimiter
      parts = numbers.split(delimiter)
    else
      # Split by commas and new lines
			parts = value.split(/[,\n]/)
    end

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

	def self.custom_delimiter(input)
		match = input.match(%r{//(.+)\n(.*)})
		delimiter = Regexp.escape(match[1])
		numbers = match[2]
		[delimiter, numbers]
	end
end
