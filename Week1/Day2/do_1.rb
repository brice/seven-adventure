
numbers = *(1..16)

numbers.each do |key|
    p numbers[((key-4)...key)] if key % 4 == 0
end

numbers.each_slice(4) { |a| p a }