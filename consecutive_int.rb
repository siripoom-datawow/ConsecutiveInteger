# function solution(A, K) {
#      var n = A.length;
#      for (var i = 0; i < n - 1; i++) {
#       if (A[i] + 1 < A[i + 1])
#               return false;
#            }
#           if (A[0] != 1 && A[n - 1] != K)
#                   if (A[0] != 1 || A[n - 1] != K)
#                return false;
#             else
#                  return true;
#              }
#          }


class NumberArrayWithEnd
  def initialize (array, endnumber)
    @array = array.dup.flatten
    @endnumber = endnumber.dup
  end
  def is_consrcutive_int
    raise ArgementError,"no number array data" if @array.empty?
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
