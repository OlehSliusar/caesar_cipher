# spec/caesar_cipher_spec.rb
require_relative '../caesar_cipher'

describe '#caesar_cipher' do
  it 'outputs the modified string' do
    expect(caesar_cipher('abc', 5)).to eq('fgh')
  end

  it 'modifies capital letters' do
    expect(caesar_cipher('ABC', 5)).to eq('FGH')
  end

  it "swaps from 'z' to 'a'" do
    expect(caesar_cipher('xyz', 3)).to eq('abc')
  end
end
