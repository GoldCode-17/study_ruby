def findAge(current_date, current_month, current_year, birth_date, birth_month, birth_year)
  month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

  if (birth_date > current_date)
    current_month = current_month - 1
    current_date  = current_date + month[birth_month - 1]
  end

  if (birth_month > current_month)
    current_year = current_year - 1
    current_month = current_month + 12
  end

  calculated_date  = current_date  - birth_date;
  calculated_month = current_month - birth_month;
  calculated_year  = current_year  - birth_year;

  "Present Age: #{calculated_year} years, #{calculated_month} months and #{calculated_date} days"
end

# driver code
# current_date = 7
# current_month = 12
# current_year = 2017
current_date = 7
current_month = 4
current_year = 2022

# birth dd//mm//yyyy
# birth_date = 16
# birth_month = 12
# birth_year = 2009
birth_date = 6
birth_month = 3
birth_year = 1978

age_x = findAge(current_date, current_month, current_year, birth_date, birth_month, birth_year)
puts age_x
