require "pry-byebug"

def bubble_sort(array)
  # An array to hold the copy of the original array
  final_array = array

  # Loop over the array
  array.each_with_index do |element, index|
    # Skip to the next iteration if the element is the first element
    if element == final_array[0]
      next
    end
    
    # Compare the current and the last element and change their indices if the
    # last one is greater than the current one
    if final_array[index - 1] > element
      final_array[index] = final_array[index - 1]
      final_array[index - 1] = element
    end
  end
  final_array
end

p bubble_sort([4, 3, 2, 1])