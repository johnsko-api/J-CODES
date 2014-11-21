def leap_year?(year)
  year = year.to_i

  if year % 4 != 0
    return false
  elsif year % 100 != 0
    return true
  elsif year % 400 != 0
    return false
  else
    return true
  end

end

year = ARGV[0]
puts leap_year?(year)
