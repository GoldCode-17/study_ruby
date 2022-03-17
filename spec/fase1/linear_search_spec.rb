require 'fase1/linear_search'
require 'study_ruby'

RSpec.describe "Linear Search" do
  it "Encontrando o elemento no array" do
    arr = [2, 3, 4, 10, 40]
    x = 10
    n = arr.length
    busca = Busca::Linear_Search.new
    result = busca.search(arr, n, x)
    expect(result).to eq(3)
  end

  it "Não encontrando o elemento no array" do
    arr = [2, 3, 4, 10, 40]
    x = 15
    n = arr.length
    busca = Busca::Linear_Search.new
    result = busca.search(arr, n, x)
    expect(result).to eq(-1)
  end
end
