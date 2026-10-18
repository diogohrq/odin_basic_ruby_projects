# Build a method #bubble_sort that takes an array and returns a sorted array. 
# It must use the bubble sort methodology (using #sort would be pretty 
# pointless, wouldn’t it?).

def bubble_sort(array)
  sorted_array = array.dup
  sorted = false
  passes = 0

  until sorted
    sorted = true

    (0...sorted_array.size - (1 + passes)).each do |pos|
      if sorted_array[pos] > sorted_array[pos + 1]
        sorted = false
        sorted_array[pos], sorted_array[pos + 1] = sorted_array[pos + 1], sorted_array[pos]
      end
    end

    passes += 1
  end

  sorted_array
end

p bubble_sort([4,3,78,2,0,2])
