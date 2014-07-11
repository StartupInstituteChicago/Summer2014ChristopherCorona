# Leap Year:
# Write a program that will take a year and report if it is a leap year. The tricky thing here is that a leap year occurs:

# on every year that is evenly divisible by 4, except every year that is evenly divisible by 100 (except every year that is evenly divisible by 400).

# For example, 1997 is not a leap year, but 1996 is.
# 1900 is not a leap year, but 2000 is.


def is_leap_year?(year)
  if year%4 == 0 and (year%100 !=0  or year%400==0)
    return true
  else
    return false
  end
end

puts is_leap_year?(2000)