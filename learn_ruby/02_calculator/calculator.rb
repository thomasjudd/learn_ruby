def add(num1, num2)
    num1 + num2
end

def subtract(num1, num2)
    num1 - num2
end

def sum(arr)
    count = 0
    arr.each { |item|
       count += item 
    }
    return count
end

def multiply(*nums)
    result = 1
    nums.each{ |n|  result *=n}
    result
end

def power(base, power)
   result = 1
   power.times do
     result *= base
   end
   result
end
