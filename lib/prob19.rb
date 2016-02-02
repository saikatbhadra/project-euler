# Counting Sundays
# Problem 19


def num_days(month, year)
  case month
  when *[4,6,9,11]
    30
  when 2
    leap_year?(year) ? 29 : 28
  else
    31
  end
end

def leap_year?(year)
  non_century_leap = (year % 4 == 0) && (year % 100 != 0)
  century_leap = (year % 4 == 0) && (year % 100 == 0) && (year % 400 == 0)
  non_century_leap || century_leap
end



