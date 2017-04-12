def caesar_cipher(string, shift_factor)
  string.length.times do |i|
    if string[i].ord >= 97 && (string[i].ord + shift_factor) <= 122 || string[i].ord >= 65 && (string[i].ord + shift_factor) <= 90
      string[i] = (string[i].ord + shift_factor).chr
    elsif string[i].ord >= 97 && string[i].ord <= 122 || string[i].ord >= 65 && string[i].ord <= 90
      string[i] = (string[i].ord + shift_factor - 122 + 96).chr
    end
  end
  string
end
