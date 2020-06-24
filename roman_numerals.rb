roman_mapping = {
  1000 => "M",
  900 => "CM",
  500 => "D",
  400 => "CD",
  100 => "C",
  90 => "XC",
  50 => "L",
  40 => "XL",
  10 => "X",
  9 => "IX",
  5 => "V",
  4 => "IV",
  1 => "I"
}

def to_roman(roman_mapping, decimal, result = '')
  return result if decimal.zero?

  divisor = roman_mapping.keys.select { |key| (decimal / key).positive? }.max

  result += roman_mapping[divisor] * (decimal / divisor)
  decimal = decimal % divisor

  to_roman roman_mapping, decimal, result
end

puts to_roman roman_mapping, 31

roman_mapping = {
  "M" => 1000,
  "CM" => 900,
  "D" => 500,
  "CD" => 400,
  "C" => 100,
  "XC" => 90,
  "L" => 50,
  "XL" => 40,
  "X" => 10,
  "IX" => 9,
  "V" => 5,
  "IV" => 4,
  "I" => 1
}

def to_decimal(roman_mapping, roman_number, result = 0)
  return result if roman_number.empty?

  roman_mapping.keys.each do |roman|
    if roman_number.start_with? roman
      result += roman_mapping[roman]
      roman_number = roman_number[roman.length..-1]
      return to_decimal roman_mapping, roman_number, result
    end
  end
end

puts to_decimal roman_mapping, 'CMXI'
