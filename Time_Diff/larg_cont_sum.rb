list2 = [5,3,-7,-8,6,6,3,-3]

def largest_contiguous_subsum(list)  #(n^3)
    subsets = []
    (0...list.length).each do |i| #(n)
        (0...list.length).each do |j| #(n^2)
            subsets << list[i..j] #(n^3)
        end
    end

    subsets.map(&:sum).max #(n^3)
end

p largest_contiguous_subsum(list2)


def largest_contiguous_subsum2(list) #0(n)
    largest_sum = list.first
    current_sum = list.first

    (1...list.length).each do |i|
        current_sum = 0 if current_sum < 0
        current_sum += list[i]
        largest_sum = current_sum if current_sum > largest_sum
    end
    largest_sum
end
    

p largest_contiguous_subsum2(list2)