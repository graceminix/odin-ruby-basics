def stock_picker(array)
    if array.length < 2
        puts "Need at least 2 days of prices."
    end
    i = 0
    final_max = 0
    final_choice = Hash.new
    days = Array.new
    while i < array.length do
        final_choice[i] = Array.new()
        j = i
        while j < array.length do
            final_choice[i][j] = array[j] - array[i]
            j += 1
        end
        final_choice[i].map! { |x| x ||0}
        maximum = final_choice[i].max()
        if maximum > final_max
            final_max = maximum
            sell = final_choice[i].find_index(final_max)
            days = [i, sell]
        end
        i += 1
    end
    profit = array[days[1]] - array[days[0]]
    puts "Buy on day #{days[0]+ 1}, sell on #{days[1]+ 1} for a profit of $#{profit}."
end

stock_picker([17,3,6,9,18,8,6,10,400])
stock_picker([17,3,6,9,15,8,6,1,10])
