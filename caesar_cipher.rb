def caesar_cipher(string, shift_size)
  mapping = Hash.new { |h,k| k }.
                 merge(make_map('a', shift_size)).
                 merge(make_map('A', shift_size))
  string.gsub(/./, mapping)
end

def make_map(first_char, shift_size)
  base = first_char.ord
  26.times.with_object({}) { |i,h| h[(base+i).chr] = (base+((i+shift_size) % 26)).chr }
end
