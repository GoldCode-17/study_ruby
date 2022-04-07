require 'fase1/calculate_age'
require 'study_ruby'

RSpec.describe "Testing the calculate age algorithm..." do
  it 'test returning age - [001]' do
    current_date = 7
    current_month = 12
    current_year = 2017
    birth_date = 16
    birth_month = 12
    birth_year = 2009
    calc_age = CalculateAge::Calculate_Age.new
    result = calc_age.findAge(current_date, current_month, current_year, birth_date, birth_month, birth_year)
    expect(result).to eq('Present Age: 7 years, 11 months and 22 days')
  end

  it 'test returning age (my age) - [002]' do
    current_date = 7
    current_month = 4
    current_year = 2022
    birth_date = 6
    birth_month = 3
    birth_year = 1978
    calc_age = CalculateAge::Calculate_Age.new
    result = calc_age.findAge(current_date, current_month, current_year, birth_date, birth_month, birth_year)
    expect(result).to eq('Present Age: 44 years, 1 months and 1 days')
  end
end