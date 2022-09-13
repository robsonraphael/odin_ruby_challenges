def bubble_sort(array)
  array.each_with_index do
    array.map.with_index do |_num, i|
      array[i + 1].nil? ? break : true

      if array[i] > array[i + 1]
        tmp = array[i]
        array[i] = array[i + 1]
        array[i + 1] = tmp
      end
    end
  end
end

p bubble_sort([4, 3, 78, 2, 0, 2])
