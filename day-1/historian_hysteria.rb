def format_string(string)
  numbers = string.gsub("\n", " ").split(" ")
  list_a = []
  list_b = []
  numbers.each_with_index do |number, index|
    index.even? ? list_a << number.to_i : list_b << number.to_i
  end
  [list_a, list_b]
end

def total_distance(list_a, list_b)
  sum = 0
  list_a.sort.each_with_index do |n, i|
    sum += (n - list_b.sort[i]).abs
  end
  sum
end

def similarity_score(list_a, list_b)
  sum = 0
  list_a.each do |num|
    sum += (num * list_b.count(num))
  end
  sum
end
