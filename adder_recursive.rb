def add numbers=[]
  first_number = numbers.shift
  if numbers.length <= 1
    return first_number + numbers.shift
  end

  return first_number + add(numbers)
end
