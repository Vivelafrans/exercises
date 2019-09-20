# My attempts on Codewars

# Find numbers which are divisible by given number
def divisible_by(numbers, divisor)
  numbers.select { |n| (n % divisor).zero? }
end
