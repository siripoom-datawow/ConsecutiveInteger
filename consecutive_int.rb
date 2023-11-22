class NumberArrayWithEnd
  def initialize (array, endnumber)
    @array = array.dup.flatten
    @endnumber = endnumber.dup
  end
  def is_consrcutive_int
    raise ArgumentError,"no number array data" if @array.empty?
    return false if @array.last != @endnumber
    return false if @array[0] != 1
    (0...@array.length-1).each do |i|
      return false if @array[i] + 1 < @array[i+1]
    end
    true
  end
end


test = NumberArrayWithEnd.new([1,1,[2],3,3], 3)
puts test.is_consrcutive_int
