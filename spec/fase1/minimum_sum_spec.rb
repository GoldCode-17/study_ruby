require 'fase1/minimum_sum'
require 'study_ruby'

RSpec.describe "Testing the minimum sum algorithm" do
  it "returning the expected value" do
    a = [7, 2, 3, 4, 5, 6]
    minimum = MinSum::Minimum_Sum.new
    result = minimum.minSum(a)
    expect(result).to eq(10)
  end
end