# Write a program that takes a series of sets ("reports") of digits from 1-99 and returns the ones that are "safe"
# safe reports must: 1) must not contain repeated elements ("levels"), 2) be either asc or desc, 3) have no more than a diff of 3 between each level
# IF an "unsafe" report can be made "safe" by removing just 1 level, it can pass as safe

# 1. format data into an array of arrays
# 2. #is_safe? method to iterate over individual reports, returning true if all safety conditions met
# 3. if not met, #problem_dampener to test if removing 1 level makes the report safe, returning true if so, false if not
# 4. #safe_reports using #select iteration over parent array that calls is_safe on each sub array and returns count of safe reports

def format_string(string)
  string.split("\n").map do |set|
    set.split(" ").map { |n| n.to_i }
  end
end

def is_safe?(report)
  return true if report.uniq.size == report.size &&
                  (report == report.sort || report == report.sort.reverse) &&
                  report.each_cons(2).all? { |a, b| (a - b).abs <= 3 }

  problem_dampener(report)
end

def problem_dampener(report)
  report.each_with_index do |_, index|
    modified_report = report.dup
    modified_report.delete_at(index)
    return true if modified_report.uniq.size == modified_report.size &&
                  (modified_report == modified_report.sort || modified_report == modified_report.sort.reverse) &&
                  modified_report.each_cons(2).all? { |a, b| (a - b).abs <= 3 }
  end
  false
end

def safe_reports(all_reports)
  all_reports.count { |report| is_safe?(report) }
end
