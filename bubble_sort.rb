def bubble_sort(array)
  # An array to hold the copy of the original array
  final_array = array

  # Loop over the array
  loop do 
    # Set a flag to check if the array has been sorted
    not_sorted = false

    array.each_with_index do |element, index|
      # Skip to the next iteration if the element is the first element
      if element == final_array[0]
        next
      end
      
      # Compare the current and the previous element and change their indices if
      # the previous one is greater than the current one
      if final_array[index - 1] > element
        final_array[index] = final_array[index - 1]
        final_array[index - 1] = element
        not_sorted = true

      # Skip to the next iteration if the previous element is smaller than the
      # current one
      elsif final_array[index - 1] < element
        next

      # Skip to the next iteration if the previous and current elements are 
      # equal
      elsif final_array[index - 1] == element
        next
      end
    end
    break if not_sorted == false
  end
  final_array
end

p bubble_sort([4, 6, 2, -1, 345, 5, 78, 2, 0 , 3, 3])