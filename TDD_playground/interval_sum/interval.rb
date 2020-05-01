def sumInterval(intervals)
    unless intervals.is_a?(Array)
        raise ArgumentError, "only Arrays"
    end
    sum = 0
    intervals.sort!
    intervals.each_with_index do |pair,index| 
        intervals.each_with_index do  |compare,i|
            next if index == i
            if compare[0] <= pair[0] and compare[1] >= pair [1]
                pair[0], pair[1] = 0, 0
            elsif compare[0] <= pair[0] and compare[1] >= pair[0]
                pair[0] = compare[1] 
            end
        end      
        sum += pair[1] - pair[0]
    end
    sum
end