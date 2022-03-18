require 'fase1/binary_search'
require 'study_ruby'

RSpec.describe "Testing binary search algorithm" do
  it ">> Finding element in array [001]" do
    arr = [2, 3, 4, 6, 10, 40]
    x = 10
    search = BinSearch::Binary_Search.new
    result = search.binarySearch(arr, 0, (arr.count - 1), x)
    expect(result).to eq(4)
  end

  it ">> Not finding element in array [002]" do
    arr = [2, 3, 4, 6, 10, 40]
    x = 5
    search = BinSearch::Binary_Search.new
    result = search.binarySearch(arr, 0, (arr.count - 1), x)
    expect(result).to eq(-1)
  end

  it ">> Finding element in array [003]" do
    arr = [2, 3, 4, 6, 10, 40]
    x = 2
    search = BinSearch::Binary_Search.new
    result = search.binarySearch(arr, 0, (arr.count - 1), x)
    expect(result).to eq(0)
  end  
end