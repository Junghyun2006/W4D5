list = [ 0, 3, 5, 4, -5, 10, 1, 90, -20 ]

def my_min(list) #O(n^2)
    list.each_with_index do |num1, i|
        list.each_with_index do |num2, j|
            break if num1 > num2
            return num1 if j == list.length - 1
        end
    end
end

p my_min(list)

def my_min_2(list) #O(n)
    min = list[0]
    list.each {|num| min = num if num < min} 
    min
end

p my_min_2(list)



        

        


            
    





