require 'fase1/missing_character'
require 'study_ruby'

RSpec.describe 'Testing missing character algorithm' do
  it ">> returning missing characters [001]" do
    str_1 = "The quick brown fox jumps over the dog"
    miss_char = MissChar::Miss_Character.new
    result = miss_char.missingChars(str_1)
    expect(result).to eq('alyz')
  end

  it ">> the string is a pangram [002]" do
    str_1 = "The quick brown fox jumps over the dog alyz"
    miss_char = MissChar::Miss_Character.new
    result = miss_char.missingChars(str_1)
    expect(result).to eq('')
  end
end