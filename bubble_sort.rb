require "pry-byebug"

def bubble_sort(array)
  array.each do |element|
    previous_element_set = false
    if previous_element_set
      binding.pry
      if previous_element > element
        array[array.index(element)] = previous_element
        array[array.index(previous_element)] = element
        previous_element = element
        previous_element_set = true
      end
    end
  end
  array
end

p bubble_sort([4, 3, 2, 1])