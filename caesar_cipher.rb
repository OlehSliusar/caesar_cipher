def caesar_cipher(string, shift_factor)
  string.length.times do |i|
    if (string[i].ord + shift_factor) <= 122
      string[i] = (string[i].ord + shift_factor).chr
    else
      string[i] = (string[i].ord + shift_factor - 122 + 96).chr
    end
  end
  string
end
puts "Enter a string:"
string_input = gets.chomp
puts "Enter shift factor:"
shift_factor_input = gets.chomp.to_i
result_string = caesar_cipher(string_input, shift_factor_input)
puts result_string