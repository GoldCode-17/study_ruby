require 'fase2/find_missing_number'
require 'study_ruby'

RSpec.describe "Testing the find missing number algorithm" do

  it '>> Returning the number that was not found in the sequence [001]' do
    a = [1, 2, 4, 5, 6]
    miss = MissNo::Missing_Numger.new
    result = miss.getMissingNo(a)
    expect(result).to eq(3)  
  end

  it '>> Returning the number that was not found in the sequence [001]' do
    a = [1, 2, 3, 4, 5, 6]
    miss = MissNo::Missing_Numger.new
    result = miss.getMissingNo(a)
    expect(result).to eq(7)  
  end  
  
end
