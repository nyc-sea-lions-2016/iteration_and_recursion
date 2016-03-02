def add(numbers=[])
  sum = 0
  numbers.each do |number|
    sum += number
  end
  sum
end

puts add(0.upto(2).to_a) == 3
puts add(0.upto(10).to_a) == 55
puts add(0.upto(20).to_a) == 210
puts add(0.upto(50).to_a) == 1275
puts add(0.upto(100).to_a) == 5050
puts add(0.upto(1000).to_a) == 500500
puts add(0.upto(10000).to_a) == 50005000
puts add(0.upto(100000).to_a) == 5000050000
