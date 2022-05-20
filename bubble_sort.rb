def bubble_sort(array)
    time = 0
    while time < array.length
        i = 0
        while i < array.length
            if array[i+1] != nil
                if array[i] > array[i+1]
                    placeholder = array[i]
                    array[i] = array[i+1]
                    array[i+1] = placeholder
                end
            end
            i += 1
        end
        time += 1
    end
    puts array
end

bubble_sort([4,3,78,2,0,2, 200, 34, -40, 56])