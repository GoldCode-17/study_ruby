require 'fase2/jump_search.rb'
require 'study_ruby'

RSpec.describe "Testing jump search algorithm" do

  it ">> Finding element in array [001]" do
    arr = [ 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]
    x = 55
    n = arr.length    
    search = JumSearch::Jump_Search.new
    result = search.jumpSearch(arr, x, n)
    expect(result).to eq(10)
  end

  it ">> Not finding element in array [001]" do
    arr = [ 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]
    x = 57
    n = arr.length    
    search = JumSearch::Jump_Search.new
    result = search.jumpSearch(arr, x, n)
    expect(result).to eq(nil)
  end  

end