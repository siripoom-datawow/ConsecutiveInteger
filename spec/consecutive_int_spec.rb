require './consecutive_int.rb'

RSpec.describe NumberArrayWithEnd do
  it 'raise error if get empty array' do
    not_in_last = NumberArrayWithEnd.new([], 5)
    expect{not_in_last.is_consrcutive_int}.to raise_error(ArgumentError,'no number array data')
  end
  it 'return false if last number in array is not what described' do
    not_in_last = NumberArrayWithEnd.new([1,2,3,4,4], 5)
    expect(not_in_last.is_consrcutive_int).to eq(false)
  end
  it 'return false if first number in array is not 1' do
    not_in_last = NumberArrayWithEnd.new([2,2,3,4,4], 4)
    expect(not_in_last.is_consrcutive_int).to eq(false)
  end
  it 'return false if get [1,2,4] and 4' do
    not_in_last = NumberArrayWithEnd.new([1,2,4], 4)
    expect(not_in_last.is_consrcutive_int).to eq(false)
  end
  it 'return true if get [1,2,3,3,4] and 4' do
    not_in_last = NumberArrayWithEnd.new([1,2,3,3,4], 4)
    expect(not_in_last.is_consrcutive_int).to eq(true)
  end
  it 'return true if get [1,[2],3,3,4,4,5] and 5' do
    not_in_last = NumberArrayWithEnd.new([1,[2],3,3,4,4,5], 5)
    expect(not_in_last.is_consrcutive_int).to eq(true)
  end
end
