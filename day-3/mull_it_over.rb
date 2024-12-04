# 1. Format text into an array of strings containing only valid sequences
# 2. For each sequence, capture the 2 numbers
# 3. multiply them and incremenet sum

def format_string(text)
  text.scan(/mul\(\d+,\d+\)/).map do |s|
    s[4..-2].split(",").map { |n| n.to_i }
  end
end

# Now the dataset contains do() and don't()'s which enable and disable mul()
# the set starts enabled
# new method should return an array of arrays only containing the numbers to add

# 1. split text at do(), so arrays contain dont()
def format_with_conditions(text)
  results = []
  condition_split = text.split("do()").map { |s| s.split("don't()") }
  condition_split.each do |array|
    formatted_string = format_string(array.first)
    results.concat(formatted_string) unless formatted_string.empty?
  end
  results
end

# where array contains arrays made up of ints for multiplying
def multiplication_sum(array)
  sum = 0
  array.each do |sequence|
    sum += (sequence[0] * sequence[1])
  end
  sum
end
