def findAge(current_date, current_month, current_year, birth_date, birth_month, birth_year)
  month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  if (birth_date > current_date)
    current_month = current_month - 1
    current_date  = current_date + (birth_month - 1).month
  end

  calculated_date  = current_date  - birth_date;
  calculated_month = current_month - birth_month;
  calculated_year  = current_year  - birth_year;

  return "Present Age: #{calculated_year} years, #{calculated_month} months and #{calculated_date} days"
end

# driver code
current_date = 7
current_month = 12
current_year = 2017

# birth dd//mm//yyyy
birth_date = 16
birth_month = 12
birth_year = 2009

findAge(current_date, current_month, current_year, birth_date, birth_month, birth_year)