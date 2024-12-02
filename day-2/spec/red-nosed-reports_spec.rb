require 'rspec'
require_relative "../red-nosed-reports.rb"

describe('#is_safe?') do
  it "returns false if report contains multiple repeated values" do
    report = [1, 2, 3, 3, 3, 4]
    expect = false
    actual = is_safe?(report)
    expect(actual).to eq(expect)
  end
  it "returns true if report contains one repeated value and no other errors" do
    report = [1, 2, 3, 3, 4]
    expect = true
    actual = is_safe?(report)
    expect(actual).to eq(expect)
  end
  it "returns false if report is not sorted multiple times" do
    report = [1, 2, 4, 3, 5, 7, 6]
    expect = false
    actual = is_safe?(report)
    expect(actual).to eq(expect)
  end
  it "returns true if report is not sorted by 1 leve;" do
    report = [1, 2, 4, 3, 5]
    expect = true
    actual = is_safe?(report)
    expect(actual).to eq(expect)
  end
  it "returns false if diff between values > 3 multiple times" do
    report = [1, 2, 3, 7, 8, 9, 15]
    expect = false
    actual = is_safe?(report)
    expect(actual).to eq(expect)
  end
  it "returns false if diff between values > 3 only once" do
    report = [1, 2, 3, 7, 8, 9]
    expect = false
    actual = is_safe?(report)
    expect(actual).to eq(expect)
  end
  it "returns true if sorted, unique and with diff of not exceeding 3" do
    report = [1, 3, 6, 7, 10]
    expect = true
    actual = is_safe?(report)
    expect(actual).to eq(expect)
  end
  it "returns true if sorted, unique and with diff of not exceeding 3 with only one anomoly" do
    report = [1, 3, 6, 7, 10, 1]
    expect = true
    actual = is_safe?(report)
    expect(actual).to eq(expect)
  end
end

describe('#safe_reports') do
  it "returns 0 if no reports are safe, even with problem_dampener" do
    reports = [[1, 1, 2, 3, 8], [10, 8, 9, 7, 7], [1, 5, 1]]
    expect = 0
    actual = safe_reports(reports)
    expect(actual).to eq(expect)
  end

  it "returns correct amount of safe reports from small sample" do
    reports = [[1, 1, 2, 3], [2, 3, 4], [1, 2, 6, 7], [1, 3, 6, 7, 10], [1, 2, 3, 3, 4]]
    expect = 4
    actual = safe_reports(reports)
    expect(actual).to eq(expect)
  end

  it "returns correct amount of safe reports from small sample" do
    reports = [
      [1, 2, 3, 5],
      [38, 78, 79, 97, 44],
      [83, 32, 79],
      [52, 27, 24, 74, 23, 13],
      [6, 33, 1, 25, 52, 20],
      [78, 15, 65, 29, 33, 67, 84],
      [47, 36, 57],
      [74, 17, 81],
      [54, 17, 43, 75, 76, 26],
      [77, 10, 9, 63, 92],
      [62, 31, 49, 74, 39],
      [52, 49, 45, 51, 11, 64, 58],
      [19, 19, 55, 2, 53, 62, 39],
      [81, 6, 45, 83, 69],
      [70, 17, 61, 52, 42, 47],
      [77, 81, 85, 94, 27, 12],
      [38, 41, 44],
      [99, 76, 21, 22, 15, 63],
      [74, 82, 34, 35, 25, 90],
      [66, 97, 36, 71],
      [9, 28, 13, 96, 57, 74, 67],
      [42, 41, 53, 89, 41],
      [16, 33, 34, 24, 57, 94, 70],
      [79, 11, 96, 96, 24, 36],
      [24, 22, 20, 18, 16],
      [17, 96, 76],
      [36, 33, 30, 27, 24, 21],
      [20, 22, 24, 26, 28, 30],
      [68, 70, 84, 23, 52, 93, 56],
      [15, 53, 14, 25, 77, 35, 73],
      [66, 6, 72, 7, 83, 36],
      [27, 25, 23, 21, 19, 17],
      [74, 56, 23, 94],
      [54, 53, 38, 66, 40, 57, 27],
      [70, 17, 83, 53, 15, 87],
      [44, 49, 84, 65, 20],
      [43, 69, 3, 56, 11, 7, 4],
      [31, 93, 80, 77, 27, 66],
      [24, 26, 28],
      [47, 61, 59, 54, 2, 70],
      [9, 7, 5, 3],
      [50, 53, 56, 59],
      [72, 5, 84],
      [15, 85, 7, 68, 95, 89, 89],
      [39, 41, 37, 54, 47, 53],
      [22, 46, 63, 30, 77, 62, 78],
      [91, 6, 15, 6],
      [41, 40, 39, 38, 37],
      [47, 2, 68, 11],
      [49, 45, 67, 94, 35, 96]
    ]
    expect = 10
    actual = safe_reports(reports)
    expect(actual).to eq(expect)
  end
end

describe("#problem_dampener") do
  it "Should return false if a report contains > 1 problematic level" do
    report = [1, 1, 2, 3, 7]
    expect = false
    actual = problem_dampener(report)
    expect(actual).to eq(expect)
  end
  it "Should return true if report contains 1 problematic level" do
    report = [1, 1, 2, 3]
    expect = true
    actual = problem_dampener(report)
    expect(actual).to eq(expect)
  end
end
