require '../../lib/fase2/fibonacci_search/fase2/fibonacci_search_spec.rb'
require 'study_ruby'

RSpec.describe 'Running tests with the fibonacci search algorithm' do
  it ">> Finding element in array [001]" do
    arr = [10, 22, 35, 40, 45, 50, 80, 82, 85, 90, 100, 235]
    n = arr.length
    x = 235
    fibo_search = ModuleFibonacciSearch::Fibonacci_Search.new
    result = fibo_search.FibonacciSearch(arr, x, n)
    expect(result).to eq(11)
  end

  it ">> Not Finding element in array [002]" do
    arr = [10, 22, 35, 40, 45, 50, 80, 82, 85, 90, 100, 235]
    n = arr.length
    x = 26
    fibo_search = ModuleFibonacciSearch::Fibonacci_Search.new
    result = fibo_search.FibonacciSearch(arr, x, n)
    expect(result).to eq(nil)
  end
end