list2 = [5,3,-7,-8,6,6,3,-3]

def largest_contiguous_subsum(list)  #O(n^3)
    subsets = []
    (0...list.length).each do |i|
        (0...list.length).each do |j|
            subsets << list[i..j]
        end
    end

    subsets.map(&:sum).max
end

p largest_contiguous_subsum(list2)

def largest_contiguous_subsum2(list) #0(n)
    i = 0
    j = 1
    largest_sum = 0
    current_sum = list[i]
    until i == list.length - 1
        #add next element to current sum"
        current_sum += list[j]

        #replace largest_sum if current_sum is larger than largest_sum
        largest_sum = current_sum if current_sum > largest_sum

        #increment j by 1 as long as it isnt equal to the length of the array, 
        #if it is increment i by 1 and reset j to 1 + i

        if j != (list.length - 1)
            j+=1
        else
            i += 1
            current_sum = list[i]
            j = i + 1
        end
    end
    largest_sum
end

p largest_contiguous_subsum2(list2)