require 'fase1/binary_search'
require 'study_ruby'

RSpec.describe "Encontrando o elemento no array" do
  it "" do
    arr = [2, 3, 4, 6, 10, 40]
    x = 10
    search = BinSearch::Binary_Search.new
    result = search.binarySearch(arr, 0, (arr.count - 1), x)
    expect(result).to eq(4)
  end

#  it "Não encontrando o elemento no array" do
    
 # end  
end