# Counting Sundays
# Problem 19
require 'date'

def day_of_the_week(date)
  # 0 is Monday -> 6 is Sunday
  day = date.day
  month = date.month
  year = date.year
  days_since_1900_start(day, month, year) % 7
end

def days_since_1900_start(day, month, year)
  days_since = 0
  (1900...year).each do |yr|
    days_since += days_in_year(yr)
  end
  (1...month).each do |month|
    days_since += num_days(month, year)
  end

  days_since += day - 1
end

def days_in_year(year)
  leap_year?(year) ? 366 : 365
end

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

def num_sundays(start_date, end_date)
  sundays = 0
  (start_date.year..end_date.year).each do |year|
    (start_date.month..end_date.month).each do |month|
      day = Date.new(year,month,1)
      sundays += 1 if day_of_the_week(day) == 6
    end
  end

  sundays
end

p num_sundays(Date.new(1901,1,1),Date.new(2000,12,31))



