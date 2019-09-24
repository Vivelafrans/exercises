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

# Find the odd number of occurences of one number in sequence and return it
# My attempt
def find_it(seq)
  appearances = seq.each_with_object(Hash.new(0)) { |number, counts| counts[number] += 1 }
  answer = appearances.select { |k, v| v % 2 != 0 }
  answer.keys[0]
end
# Better solution found on codewars:

def find_it_better(seq)
  seq.detect { |n| seq.count(n).odd? }
end
