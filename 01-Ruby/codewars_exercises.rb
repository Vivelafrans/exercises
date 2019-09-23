# My attempts on Codewars

# Find numbers which are divisible by given number (8kyu)
def divisible_by(numbers, divisor)
  numbers.select { |n| (n % divisor).zero? }
end

# Sort string by number represented in each word (6kyu)
def order(words)
  words.split.sort_by { |x| x[/\d+/].to_i }.join(' ')
end

# Find difference in volume regardless which entry is the highest (8 kyu)
def find_difference(first, second)
  (first.inject(:*) - second.inject(:*)).abs
end
