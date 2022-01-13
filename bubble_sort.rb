require "pry-byebug"

def bubble_sort(array)
  final_array = array
  array.each_with_index do |element, index|
    if element == final_array[0]
      next
    end
    
    if final_array[index - 1] > element
      final_array[index] = final_array[index - 1]
      final_array[index - 1] = element
    end
  end
  final_array
end

p bubble_sort([4, 3, 2, 1])