module CalculateAge
  class Calculate_Age
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
  end
end