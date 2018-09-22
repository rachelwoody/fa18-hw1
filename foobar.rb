class Foobar
  def self.baz(a)
    # Class method, not an instance method
    # Call with `Foobar.baz`
    # Q4 CODE HERE
    integer = 0
    integer_arr = Array.new
    evens = Array.new
    final_arr = Array.new
    unique = Array.new
    i=0
    loop do
      #CONVERT TO INTEGERS AND ADD 2
      #ADD NEW VALUES TO INTEGER_ARR[]
      integer = (a[i].to_i)
      integer = integer + 2
      integer_arr.insert(i, integer)
      #ADD EVEN NUMS ONLY TO EVENS[]
      if integer_arr[i]%2 == 0 && integer_arr[i] < 10
          evens.insert(i, integer_arr[i])
      else evens.insert(i, 0)
      end
      i = i + 1
      if i > 5
        break
      end
    end
#  REMOVE DUPLICATES FROM EVENS
    evens = evens.uniq
    evens = evens.compact
#   SUM EVENS
    sum = evens.inject(0){|sum,x| sum + x }
    return sum
    #sum = evens.inject(0){|sum,x| sum + x }
    #puts sum
    #a = sum
  end
end
