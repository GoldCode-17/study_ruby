require 'fase2/selection_search'
require 'study_ruby'

RSpec.describe "Testing the selection search algorithm" do
  it "Sorting array >> 001" do
    arr = [64, 25, 12, 22, 11]
    ordered_array = SelectionSearch::Selection_Search.new
    result = ordered_array.Select_Search(arr)
    expect(result).to eq([11, 12, 22, 25, 64])
  end

  it "Sorting array >> 002" do
    arr = [64, 25, 12, 22, 11, 1, 8, 14, 23]
    ordered_array = SelectionSearch::Selection_Search.new
    result = ordered_array.Select_Search(arr)
    expect(result).to eq([1, 8, 11, 12, 14, 22, 23, 25, 64])
  end
end